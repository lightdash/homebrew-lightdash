class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.182.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.182.0/lightdash-cli-2.182.0-macos-arm64.tar.gz"
      sha256 "00271c1d7a424bb335e060c7c77115b9c49bf0205f8e8be304d20046273a3bb8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.182.0/lightdash-cli-2.182.0-macos-x64.tar.gz"
      sha256 "268d3a992e0223b28f8c4acd2f3d6def6537089da1587a9984df61b5aa819ec3"
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
