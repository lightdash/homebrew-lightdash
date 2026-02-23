class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2506.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2506.3/lightdash-cli-0.2506.3-macos-arm64.tar.gz"
      sha256 "3fa09e06b0dc58e807c43d3867d1d56159a82cd4d3c0ba86c7e0f6abb0900c45"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2506.3/lightdash-cli-0.2506.3-macos-x64.tar.gz"
      sha256 "bef65e658db41fca7a9b7300484fca7e8f49b48734738719fe1696034ccd24e8"
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
