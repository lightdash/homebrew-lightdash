class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.43.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.43.1/lightdash-cli-1.43.1-macos-arm64.tar.gz"
      sha256 "db55f18b2b4b2bced64531040fe0479175479236d54ef04acd6be77f1b96f429"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.43.1/lightdash-cli-1.43.1-macos-x64.tar.gz"
      sha256 "522362da32f9d3e63f3a7877fc2f334b2b17f97bb3a5e69069ebe1ae63fe3304"
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
