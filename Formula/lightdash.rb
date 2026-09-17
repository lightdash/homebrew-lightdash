class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.252.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.252.0/lightdash-cli-2.252.0-macos-arm64.tar.gz"
      sha256 "c03b6ddeb1f20e392533096f130d12dfa873338b211342a1106200e2cf044a8e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.252.0/lightdash-cli-2.252.0-macos-x64.tar.gz"
      sha256 "7a7586823daff094cc0e6d30b4ff58a6619422a8ac8639b73f6e21f0b166428e"
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
