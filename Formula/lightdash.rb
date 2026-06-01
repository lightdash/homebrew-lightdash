class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3068.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3068.0/lightdash-cli-0.3068.0-macos-arm64.tar.gz"
      sha256 "08153bd8bef54692ab2ba8bdf8c042e92a357ede8525c04dcefe9b2d30e41835"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3068.0/lightdash-cli-0.3068.0-macos-x64.tar.gz"
      sha256 "068a263618c5fcfd19a9af8e48c08dc376f280b4e1980422873eaae4ecb2c0a4"
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
