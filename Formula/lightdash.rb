class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.50.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.50.1/lightdash-cli-1.50.1-macos-arm64.tar.gz"
      sha256 "c14f8df65dd50da914eb3eae5579b3f1063de133992ccdbf6f0f62f16631a495"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.50.1/lightdash-cli-1.50.1-macos-x64.tar.gz"
      sha256 "6e1a679d7b706b0ee79aa8f4b0983aa32b7494841aa9340a82819b60895d21c8"
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
