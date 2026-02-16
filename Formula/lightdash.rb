class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2470.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2470.0/lightdash-cli-0.2470.0-macos-arm64.tar.gz"
      sha256 "5b7033e51c3490d55f7b8d0cd8fecac9736010db9b690e36d3f6de7089a71639"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2470.0/lightdash-cli-0.2470.0-macos-x64.tar.gz"
      sha256 "a66d17c109ecfdc0ba6d6fdd330221bf6cdbde1d84d00bc7ee1c65b82877cc50"
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
