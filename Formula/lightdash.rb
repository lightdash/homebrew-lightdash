class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3371.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3371.3/lightdash-cli-0.3371.3-macos-arm64.tar.gz"
      sha256 "2a98602267ace6781804182ffadfef1a7e2e827dd17061e51314f91e9c5ec2c4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3371.3/lightdash-cli-0.3371.3-macos-x64.tar.gz"
      sha256 "1b6ba2821aa74103c7d07cb4b641941e87c1c393ebaed7276a1389092a19f83b"
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
