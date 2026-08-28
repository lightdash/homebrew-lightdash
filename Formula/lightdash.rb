class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.48.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.48.0/lightdash-cli-2.48.0-macos-arm64.tar.gz"
      sha256 "f6100cdb4b3907cd3cc3808d76a1a74b9be7d4503dbfc2fd00a313e7921fd25c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.48.0/lightdash-cli-2.48.0-macos-x64.tar.gz"
      sha256 "9f87d114fb11a29a495016d07267d4938c3d88c783dbf1b60df02e5e76436d9c"
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
