class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3071.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3071.0/lightdash-cli-0.3071.0-macos-arm64.tar.gz"
      sha256 "418b68e57c613b3700941df2075d600a190fb8f60db4bfb7e9dde94d13b828de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3071.0/lightdash-cli-0.3071.0-macos-x64.tar.gz"
      sha256 "7d383f2343bb28191e522b196be83e3fd9b222f17db4e107741b2de37531d5f8"
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
