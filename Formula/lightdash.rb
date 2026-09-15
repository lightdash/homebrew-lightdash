class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.225.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.225.1/lightdash-cli-2.225.1-macos-arm64.tar.gz"
      sha256 "c28eddebd905defa78c1c08d8587db69c629d73f475d4c2893e20d56aac41312"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.225.1/lightdash-cli-2.225.1-macos-x64.tar.gz"
      sha256 "c1d204b418e4420007a6aee7909ee3e87dce32124730392356b8e05c22f39cf3"
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
