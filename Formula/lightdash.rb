class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2796.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2796.1/lightdash-cli-0.2796.1-macos-arm64.tar.gz"
      sha256 "33c2b24d6031b3348de76e9ad352261ceb83d45b0e90e87e9508c2ca2463b58c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2796.1/lightdash-cli-0.2796.1-macos-x64.tar.gz"
      sha256 "776ace4d7b05551eaefc15ec195e65a4550593fe005bb5cdcaf8616dc8400ad8"
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
