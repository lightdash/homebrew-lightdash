class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.195.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.195.1/lightdash-cli-2.195.1-macos-arm64.tar.gz"
      sha256 "9f4f8b795d2050495539b67be68417169d455ede9e02888524bdefd9b66a50bc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.195.1/lightdash-cli-2.195.1-macos-x64.tar.gz"
      sha256 "bbfe656c0391f17b3eae170a158172904c2b8b67e7f8cce278d29317354cc161"
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
