class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.171.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.171.0/lightdash-cli-2.171.0-macos-arm64.tar.gz"
      sha256 "e4c9f791a855ec4fdf8932d61ea19f4d3bb2d119afcb5508fb02f17c3f8b9dea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.171.0/lightdash-cli-2.171.0-macos-x64.tar.gz"
      sha256 "c0573d0479c2b5f3709eafc0fd2acf29c84036826264e389b1b6f1d1a3baa8fc"
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
