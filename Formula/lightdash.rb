class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.493.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.493.0/lightdash-cli-2.493.0-macos-arm64.tar.gz"
      sha256 "1a6491a755879d4c148ca1ee0f57254261e16764d8bb097d7af54072b97f9b64"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.493.0/lightdash-cli-2.493.0-macos-x64.tar.gz"
      sha256 "6f0abc80740f5a50fb8dfefe7cac3dc7239cae40c6717ab030f497b254853933"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.493.0/lightdash-cli-2.493.0-linux-x64.tar.gz"
    sha256 "e71c79ab4c328e09ea6fcd9fa406977a1f7a633a0e4d0b5217059b6adfbe5f9f"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
