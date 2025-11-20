class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2190.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2190.1/lightdash-cli-0.2190.1-macos-arm64.tar.gz"
      sha256 "d182f1b3c306e84c6d9de624b82845acd900190e1ee6c1bff9e009fe1474316b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2190.1/lightdash-cli-0.2190.1-macos-x64.tar.gz"
      sha256 "d3625381af2b7393cfae0fdd972d419afe3c8c6535a959d183692e168fd97822"
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
