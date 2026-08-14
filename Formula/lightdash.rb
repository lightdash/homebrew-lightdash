class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.157.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.2/lightdash-cli-1.157.2-macos-arm64.tar.gz"
      sha256 "cc34350d4b871b99ea1a2972c2ec5d9c05a07f2b0e8770981c401de91403e266"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.2/lightdash-cli-1.157.2-macos-x64.tar.gz"
      sha256 "ad6cd00b8fcc723316d878e713aa7d938885e899c6f62097c234f1bdad6964e8"
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
