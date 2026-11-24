class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.382.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.382.0/lightdash-cli-3.382.0-macos-arm64.tar.gz"
      sha256 "9c47ac46f5c6c53237ccf8010d2a97bf9e1e748da012cedc5e15601fc0bf7def"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.382.0/lightdash-cli-3.382.0-macos-x64.tar.gz"
      sha256 "63933996a61642b60ee619411876ae38a7be7d80283a08bb8b2b095fdfc7ac7f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.382.0/lightdash-cli-3.382.0-linux-x64.tar.gz"
    sha256 "2aa44722f70f891072e2906ded29cf01c3fc8157e490ffe41cfd2934b087865e"

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
