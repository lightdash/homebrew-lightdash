class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.112.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.112.0/lightdash-cli-2.112.0-macos-arm64.tar.gz"
      sha256 "749fc2b726c26135a42d1ccd4790caf8e96a52931e34a2ef3f425b0a5dedeaa0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.112.0/lightdash-cli-2.112.0-macos-x64.tar.gz"
      sha256 "7e3d438330fecfec27cf1f9e667591b49e6d2c3bce4c20e6a91754f9be362a2a"
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
