class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3159.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3159.0/lightdash-cli-0.3159.0-macos-arm64.tar.gz"
      sha256 "a0914acad7b9e6e3cbc1fa19db8a3daf333fc4672f1c2ca1fca22d52414cdd2b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3159.0/lightdash-cli-0.3159.0-macos-x64.tar.gz"
      sha256 "4b23d87cfc155085d14791ed5c4b624af856f22a877fd35173d49557b7297180"
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
