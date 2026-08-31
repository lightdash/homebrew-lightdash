class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.57.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.57.1/lightdash-cli-2.57.1-macos-arm64.tar.gz"
      sha256 "f0f72daf11e0ea2a68b8ec9ef7eb903431224ba1ac21336192857f4517e815e9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.57.1/lightdash-cli-2.57.1-macos-x64.tar.gz"
      sha256 "f83f023a82ef7113bc5591eeadfafac10dadedb4f345e96cde6695c7bf74c46e"
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
