class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2917.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2917.2/lightdash-cli-0.2917.2-macos-arm64.tar.gz"
      sha256 "6205210cd3d95732083ddafee81f04e98530a4ed6e2a73430ba84962f7581e92"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2917.2/lightdash-cli-0.2917.2-macos-x64.tar.gz"
      sha256 "b9b8c7aa32ebfdb41d60910e1c2e9a79a5f52b4d99a6a81a202a18fa1015d8a5"
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
