class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2571.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2571.0/lightdash-cli-0.2571.0-macos-arm64.tar.gz"
      sha256 "b321f45d56fda18801413d2e0a033f5575804275c935eee58d293bbe1ccd78ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2571.0/lightdash-cli-0.2571.0-macos-x64.tar.gz"
      sha256 "dca82422e20e25dbb418a24ef1a89adc8f49a7bd0ff4be5c603da283072e98dd"
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
