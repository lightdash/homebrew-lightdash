class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.232.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.232.0/lightdash-cli-2.232.0-macos-arm64.tar.gz"
      sha256 "a5417fb0078c5a310e4679c9b3ec8298da72a923ffae5a42817f90b72d4271ce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.232.0/lightdash-cli-2.232.0-macos-x64.tar.gz"
      sha256 "cdb981102db00fbe19e187dcc2d9730d9e93e7794c206a6dae03961c3c25562d"
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
