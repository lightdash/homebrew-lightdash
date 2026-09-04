class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.130.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.130.0/lightdash-cli-2.130.0-macos-arm64.tar.gz"
      sha256 "707ba868ee4ab53349ee0fcde09c73bbbc0bcff6194fe1d8ce2681679f17e9c5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.130.0/lightdash-cli-2.130.0-macos-x64.tar.gz"
      sha256 "ab824754ab8bb959cdac6b198889b3848b301a3ef0d3b153ae68e133992eea7e"
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
