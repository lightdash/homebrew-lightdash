class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.237.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.237.0/lightdash-cli-1.237.0-macos-arm64.tar.gz"
      sha256 "d2f0be0fe334a36813835b9770b537c2fd6389a88c0e79eb062a8b04abf67a11"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.237.0/lightdash-cli-1.237.0-macos-x64.tar.gz"
      sha256 "e3eb62980dabd80996e6625ab25ef728a8dbac8dffc6bb95666a12924ab3dce4"
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
