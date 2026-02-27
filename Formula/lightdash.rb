class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2544.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2544.0/lightdash-cli-0.2544.0-macos-arm64.tar.gz"
      sha256 "69f1c59900e23add888c1f3927dac9f43cfe5cc0091490f75ebe4d1b144c597c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2544.0/lightdash-cli-0.2544.0-macos-x64.tar.gz"
      sha256 "ffb5fbd9d3f74cf2058124fc3d3384fe562e2b24185eb9102ad7905f9a258623"
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
