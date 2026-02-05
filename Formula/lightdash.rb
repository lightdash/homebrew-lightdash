class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2430.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2430.3/lightdash-cli-0.2430.3-macos-arm64.tar.gz"
      sha256 "011357c9a98dbeed91f1c55ec22be22c8054ec7216af6df23f3c2041a54ae60e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2430.3/lightdash-cli-0.2430.3-macos-x64.tar.gz"
      sha256 "1b7b8202e4747f676c98cad18c98b7987d7adb4037aed1fa3376dc5d26d63bf9"
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
