class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.64.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.64.0/lightdash-cli-1.64.0-macos-arm64.tar.gz"
      sha256 "2388e773551c94db6013e5afb8cf2e46488621f0d5146d3ce9a4e3e28a236dac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.64.0/lightdash-cli-1.64.0-macos-x64.tar.gz"
      sha256 "88815b02e752a0864e44adac1d95a49c645bf6572b935e070f714cd84524c634"
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
