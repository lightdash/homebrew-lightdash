class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2250.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2250.0/lightdash-cli-0.2250.0-macos-arm64.tar.gz"
      sha256 "319038231a1f4bf1e6adf00b124c5e48f307298f867f0b8ab2d31804d2ef65d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2250.0/lightdash-cli-0.2250.0-macos-x64.tar.gz"
      sha256 "55f230f2b2aa16861440a47d909a37c15625c84f37840a7ea451552b50d9eb4f"
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
