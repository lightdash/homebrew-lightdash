class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2474.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2474.1/lightdash-cli-0.2474.1-macos-arm64.tar.gz"
      sha256 "1639a22d8a2678ef8679aa922b1acbac0c9c6ff87a79c01bd85f27d1e7c0132e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2474.1/lightdash-cli-0.2474.1-macos-x64.tar.gz"
      sha256 "ad4d3972fb47917e50d3916bcb67c4b3d302db940904b2f5de5f139f2abc50a3"
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
