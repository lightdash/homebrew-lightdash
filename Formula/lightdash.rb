class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.23.0/lightdash-cli-2.23.0-macos-arm64.tar.gz"
      sha256 "3bbdb61bbdebf95a559b56689e9336f94c9d3d4eed6cfd047e9568ff97bce520"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.23.0/lightdash-cli-2.23.0-macos-x64.tar.gz"
      sha256 "c3b9f8a88bbd4873a5345072719d21462856b6ab3222defc46e168ed4f630582"
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
