class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2213.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2213.1/lightdash-cli-0.2213.1-macos-arm64.tar.gz"
      sha256 "90e616b5c52c517ee945c7587b5f68adc25792b0c353c2c1b4ea61099e60241f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2213.1/lightdash-cli-0.2213.1-macos-x64.tar.gz"
      sha256 "d6201e7152b231ac4d4de8fe1ec806bb8772251a7285c6fb575f03c24e84d3bf"
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
