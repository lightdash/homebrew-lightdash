class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3056.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3056.0/lightdash-cli-0.3056.0-macos-arm64.tar.gz"
      sha256 "796ed0e95ca6642c6b66663fd3b82dc75b3161717f007120382c1743e9f3e377"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3056.0/lightdash-cli-0.3056.0-macos-x64.tar.gz"
      sha256 "19061f832af420ae1c9c062ee51a21245391539d7286d20a60bb72e7d613a607"
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
