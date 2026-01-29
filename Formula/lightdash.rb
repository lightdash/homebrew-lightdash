class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2397.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2397.0/lightdash-cli-0.2397.0-macos-arm64.tar.gz"
      sha256 "9f4fb303c5ded88155e1c036359c7931b7c083479411f9abad9d7f5caaef6bc1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2397.0/lightdash-cli-0.2397.0-macos-x64.tar.gz"
      sha256 "21b148c81eeb153a6691724f5a1d2e5a5f4a6c6b87630cfb07acfd0dd1ce95a8"
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
