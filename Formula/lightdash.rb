class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.122.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.122.0/lightdash-cli-3.122.0-macos-arm64.tar.gz"
      sha256 "426fc0455104c4bc5512717ce0c71d7013b6888ef564eae0919aea1b97e0a993"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.122.0/lightdash-cli-3.122.0-macos-x64.tar.gz"
      sha256 "6f4f9524e3baa6525079577b90d1902a122cd529f1c953b044266bde64cc388d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.122.0/lightdash-cli-3.122.0-linux-x64.tar.gz"
    sha256 "6cf29320aba8ee789d47d737c131bb597420060e0281c041b725f7f1654133b3"

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
