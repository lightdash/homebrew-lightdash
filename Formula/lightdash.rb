class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.365.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.365.0/lightdash-cli-3.365.0-macos-arm64.tar.gz"
      sha256 "082118b8326d10fc726e4de33a3d3a1ca050a107c9d43330a0e8c7e344f4b1bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.365.0/lightdash-cli-3.365.0-macos-x64.tar.gz"
      sha256 "b8d1c23227d2cf6b40432febb2b1129101e92e62a975000fe9e88b65ff0019d0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.365.0/lightdash-cli-3.365.0-linux-x64.tar.gz"
    sha256 "c7c263d5a76533cf87ab4c052284c86e29c729730e4822cd8266358cc3a5d11c"

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
