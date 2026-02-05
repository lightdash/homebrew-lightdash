class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2428.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2428.1/lightdash-cli-0.2428.1-macos-arm64.tar.gz"
      sha256 "dbd379352e062cd0a1863d14c920c007322a916ef478e840ffd300730580e8d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2428.1/lightdash-cli-0.2428.1-macos-x64.tar.gz"
      sha256 "43752f5787731c65b0834a3f12fd8a0d09140e352a456187f276d2603499fd3d"
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
