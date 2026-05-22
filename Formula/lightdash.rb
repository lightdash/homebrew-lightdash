class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3010.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3010.0/lightdash-cli-0.3010.0-macos-arm64.tar.gz"
      sha256 "8db4be4b92f7a30abc3f1b23b7946501bb72849a2e23932bd3543eb40b99b08d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3010.0/lightdash-cli-0.3010.0-macos-x64.tar.gz"
      sha256 "8e769d4778fc51a121b2a68cc529566d029d2718c102ac3110d0615518ad1442"
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
