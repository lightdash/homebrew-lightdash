class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2669.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2669.0/lightdash-cli-0.2669.0-macos-arm64.tar.gz"
      sha256 "ce09551a7e2c6cad252020a1ce6850d46a581077f00b4e13d3821e0540f8a94c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2669.0/lightdash-cli-0.2669.0-macos-x64.tar.gz"
      sha256 "47906e3ac4b8ccb228d616baa08aa7af4c61e52ce6878a8966a6176314c5f157"
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
