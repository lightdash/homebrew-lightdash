class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2331.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2331.5/lightdash-cli-0.2331.5-macos-arm64.tar.gz"
      sha256 "5593c4886f92014437e546b11ab513913adb3f3e7aba66a3179f2cef46a74e37"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2331.5/lightdash-cli-0.2331.5-macos-x64.tar.gz"
      sha256 "81b0a7192624eed2a190bf10b1a78f1da9951e6ef165ab14c014ad39c2c9de73"
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
