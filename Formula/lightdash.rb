class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2730.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2730.1/lightdash-cli-0.2730.1-macos-arm64.tar.gz"
      sha256 "e2cc7ca45fe5eeb4b7ec7a0232a5fcddb5182386d9d483b57a06416f124c6d9b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2730.1/lightdash-cli-0.2730.1-macos-x64.tar.gz"
      sha256 "3b80254eea5ce75f4cbcec6189133ab57c9a060c1c0a36d987f57e0af8ccebb8"
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
