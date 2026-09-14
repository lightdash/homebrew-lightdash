class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.211.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.211.3/lightdash-cli-2.211.3-macos-arm64.tar.gz"
      sha256 "864df41149926f912b9a957a6837d5d6c2146ae29a1679676765abd0f378b2b8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.211.3/lightdash-cli-2.211.3-macos-x64.tar.gz"
      sha256 "98f6b13b1d0cfc57f8e45d2f6f0ed4a4842e783009eea5435a0a8d6bdf59ff1e"
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
