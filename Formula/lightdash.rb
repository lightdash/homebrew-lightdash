class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.57.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.57.3/lightdash-cli-1.57.3-macos-arm64.tar.gz"
      sha256 "42279299febbfa9fa9043324d014ad5dcafe3cd4554d7387004224dbdb361bcc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.57.3/lightdash-cli-1.57.3-macos-x64.tar.gz"
      sha256 "19ca185b6289a0d9dd4b92a6fc7cedf5ae7672d1f43e9d5505773b7dbeecd415"
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
