class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.112.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.112.0/lightdash-cli-3.112.0-macos-arm64.tar.gz"
      sha256 "d09ae28a3f386c12c8c9be9f11a174862c61b599ab08a14280c082c6ca8764f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.112.0/lightdash-cli-3.112.0-macos-x64.tar.gz"
      sha256 "fd482cae7e681ab5bbcbf741a8ee842007ac26fb91863f2d44747679bb694a0a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.112.0/lightdash-cli-3.112.0-linux-x64.tar.gz"
    sha256 "cac54b829d1b612ce2ae4c85d797919a2f32985edf160632459ea3c0d5c5ae37"

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
