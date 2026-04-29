class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2836.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2836.1/lightdash-cli-0.2836.1-macos-arm64.tar.gz"
      sha256 "d37743c37b55e169310d6ed93b2aa1dc74b55d76f4457feddb14afca7f2e6316"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2836.1/lightdash-cli-0.2836.1-macos-x64.tar.gz"
      sha256 "883291b32bca594980df6e7006a1cd0461d2ecb230d8d2db85c9811b2b1d25e6"
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
