class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2637.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2637.0/lightdash-cli-0.2637.0-macos-arm64.tar.gz"
      sha256 "766b9e000bb8fd6ec7f2e1cc22fb4f15486f1b6e9b351bd69afcd7c93efd827f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2637.0/lightdash-cli-0.2637.0-macos-x64.tar.gz"
      sha256 "f916b0e907ff68191071e4705b1b744c6155a644ae7f8aa9128cc53a15e0c0c9"
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
