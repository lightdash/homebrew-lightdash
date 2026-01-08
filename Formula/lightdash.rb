class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2312.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2312.1/lightdash-cli-0.2312.1-macos-arm64.tar.gz"
      sha256 "379cb69da463ae4e74be43e33f7f0941dcfa021b8aa171adc77785414b536f7f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2312.1/lightdash-cli-0.2312.1-macos-x64.tar.gz"
      sha256 "3f6b8808da0b82c88f44feff29bf0834cba296bd03e1865172b4b29f885bdc1e"
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
