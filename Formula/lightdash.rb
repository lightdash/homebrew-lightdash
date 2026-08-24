class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.242.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.4/lightdash-cli-1.242.4-macos-arm64.tar.gz"
      sha256 "573caf0eb17d34cdf7910d75b1e7bff0aaddd0a2c46d026fb021d97267b9218a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.4/lightdash-cli-1.242.4-macos-x64.tar.gz"
      sha256 "ef37a3322ffc72d8f6df4fe3595a305a2d6ed8253a6e43ed04bdff0d8214ac42"
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
