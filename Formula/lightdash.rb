class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2709.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.5/lightdash-cli-0.2709.5-macos-arm64.tar.gz"
      sha256 "876a7c980fb47064dd7a911bc6597127574ff2285f15e797ae9b17c1267a09fe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.5/lightdash-cli-0.2709.5-macos-x64.tar.gz"
      sha256 "79d5ef422db02fc36d98fb24ed49f7e594b33fabb0010a72566adbd1fc969a75"
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
