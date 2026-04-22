class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2783.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2783.2/lightdash-cli-0.2783.2-macos-arm64.tar.gz"
      sha256 "9a7946f995dc5506388c609d677ddd83011d5e0d3c34f4ab7e1d04cf3d3cfce5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2783.2/lightdash-cli-0.2783.2-macos-x64.tar.gz"
      sha256 "525e5b486dd57a30dd2d7f0beba32bdf9b1f3de25a7b13987ccd877574a01e20"
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
