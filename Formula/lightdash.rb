class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2742.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2742.0/lightdash-cli-0.2742.0-macos-arm64.tar.gz"
      sha256 "d1b3c9e092567b2698f567f3759a08a42109a479fd84c9b76215af9fe419b73b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2742.0/lightdash-cli-0.2742.0-macos-x64.tar.gz"
      sha256 "f01488c99c0c81662d1883234f888310033ae2a44cd466618c0c65f146de2a10"
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
