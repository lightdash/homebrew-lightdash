class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.21.0/lightdash-cli-2.21.0-macos-arm64.tar.gz"
      sha256 "6e69885f7bed84f9726d1d1cdb2968698159fbbf8e13bf26a0302d553a2a9008"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.21.0/lightdash-cli-2.21.0-macos-x64.tar.gz"
      sha256 "57a1d1cced117bf18db84c338d85adfaf6c07f0501b3fcfb378e4815eb6c6f30"
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
