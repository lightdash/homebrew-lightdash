class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2842.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2842.1/lightdash-cli-0.2842.1-macos-arm64.tar.gz"
      sha256 "9840070b09a54de4271d486093ce94aea7ba28ebe1130b8d1c2f334e3893d9d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2842.1/lightdash-cli-0.2842.1-macos-x64.tar.gz"
      sha256 "d2cfc812362c6b4635f80100a82b3fc8c42ecbdee6a8f463ee70d34ce51284dd"
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
