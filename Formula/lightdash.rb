class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.286.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.1/lightdash-cli-2.286.1-macos-arm64.tar.gz"
      sha256 "8d41df768cf667df2bbc366d07ada9514abc77b71f182c64ccbd1cc097df273b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.1/lightdash-cli-2.286.1-macos-x64.tar.gz"
      sha256 "b10e8f5fe12493cef3a484aeb57cd30fef3624e2d1c84723e15beb98d20ab5a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.1/lightdash-cli-2.286.1-linux-x64.tar.gz"
      sha256 "bce448a2852b6aa98aff9bafcdeffaff7125665b54079cfd1728859aeeabee77"
    end
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
