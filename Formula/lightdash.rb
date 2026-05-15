class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2950.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2950.3/lightdash-cli-0.2950.3-macos-arm64.tar.gz"
      sha256 "72a190ed13f9e0b95183c0dc465d8bf1986c269554702cab71af161066364bf9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2950.3/lightdash-cli-0.2950.3-macos-x64.tar.gz"
      sha256 "9424938c7037b0c2f8d06d08cc375e1865eca4d587aa66426baa8be42c77dc4b"
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
