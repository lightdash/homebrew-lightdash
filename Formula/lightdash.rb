class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.136.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.136.2/lightdash-cli-2.136.2-macos-arm64.tar.gz"
      sha256 "8816c0889a04d029d0464d3bbf08a2d4fd740dd30dd1123c74082c744dcb7e20"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.136.2/lightdash-cli-2.136.2-macos-x64.tar.gz"
      sha256 "722a33d93b55df44bd8aba2fcfbf669ccd5dec0d928145ee6bb1e4a4f954f943"
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
