class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.71.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.71.2/lightdash-cli-2.71.2-macos-arm64.tar.gz"
      sha256 "0b6012c19acbec5d16c80c40f34e06ace62b4ad637e598d53bb690c6f7ddc497"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.71.2/lightdash-cli-2.71.2-macos-x64.tar.gz"
      sha256 "1b48c06d8e11de41e469fdc181ed7f64957dbd5754b519771c7dab3fb3fcf8af"
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
