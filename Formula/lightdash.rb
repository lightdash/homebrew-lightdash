class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.132.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.132.0/lightdash-cli-1.132.0-macos-arm64.tar.gz"
      sha256 "3ad0b51d2d91816075ea41706b698f6d2f2c4dcf72b1bbec5dcf3aea33ed1746"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.132.0/lightdash-cli-1.132.0-macos-x64.tar.gz"
      sha256 "aa5a916822caddca13ada5aab2b1f2f4b4243a0a16d2f8ed4725307aaf274110"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
