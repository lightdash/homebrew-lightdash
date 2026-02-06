class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2438.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2438.1/lightdash-cli-0.2438.1-macos-arm64.tar.gz"
      sha256 "02cbf8bd646016d88605dda78a6ec2c2ace1b6c1627b0b121f8a56855de3ae61"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2438.1/lightdash-cli-0.2438.1-macos-x64.tar.gz"
      sha256 "06ce20712c91f9c78ea436c41b8ce3e57b2ec70a0a6ada137207c0f08f01ddb1"
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
