class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.118.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.118.1/lightdash-cli-2.118.1-macos-arm64.tar.gz"
      sha256 "60b5ba4f9bb77230e0b047728121df46d94ac337e26e38066d3478e46b2e8885"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.118.1/lightdash-cli-2.118.1-macos-x64.tar.gz"
      sha256 "d8d2cb289763cbc98c15b8bad2147b0db51ced0976f0fe36741ab924a15da3e7"
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
