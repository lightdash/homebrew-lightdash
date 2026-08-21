class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.233.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.233.0/lightdash-cli-1.233.0-macos-arm64.tar.gz"
      sha256 "19cf2c3a604e44bea979b296fde1ad14d60c73322156768a24fb4f5716d2ec6c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.233.0/lightdash-cli-1.233.0-macos-x64.tar.gz"
      sha256 "550223ebe85d9af27f56e3c4adc7e2a4ae8c1b7a87403934a4c3a075c4e46c51"
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
