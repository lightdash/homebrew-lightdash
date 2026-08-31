class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.65.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.65.0/lightdash-cli-2.65.0-macos-arm64.tar.gz"
      sha256 "de2f74a06ee2d4d4e1bca97fc7246f453fa5354dc99382ba7dd4eaa3af4b0a6f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.65.0/lightdash-cli-2.65.0-macos-x64.tar.gz"
      sha256 "cece933285b2ef4c80bbc98579e32acc267a744b31c1997c0b9abde1cf2e5dba"
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
