class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3298.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3298.0/lightdash-cli-0.3298.0-macos-arm64.tar.gz"
      sha256 "b1ff68264cb848f32993b252b459743e11ecdc1b42bfcb3c40dd4fc53301aff3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3298.0/lightdash-cli-0.3298.0-macos-x64.tar.gz"
      sha256 "cc025afe2fc95986febad87d6bfb75b67603ec3928c2932d3ba86809577aaa8f"
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
