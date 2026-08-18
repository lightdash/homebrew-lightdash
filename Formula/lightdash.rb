class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.191.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.191.0/lightdash-cli-1.191.0-macos-arm64.tar.gz"
      sha256 "e7bb88d017e96975700c0181b17c4c8209644a0f3b31e2d74159d2fcf4e7f6eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.191.0/lightdash-cli-1.191.0-macos-x64.tar.gz"
      sha256 "8ec6207ebbf84d9057e2afe3624bdb9a579d5969956c011be3e1e6287c38a947"
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
