class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.259.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.259.1/lightdash-cli-2.259.1-macos-arm64.tar.gz"
      sha256 "77fefabafd2c66c273b890077be3b9584cd19bfffb0143a4ab90cd7901d43d9b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.259.1/lightdash-cli-2.259.1-macos-x64.tar.gz"
      sha256 "302143a31f4eaa045d3d45d6c714af6eec928d1e9672c36f3240fc20e76571ef"
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
