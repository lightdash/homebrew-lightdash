class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.105.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.105.0/lightdash-cli-1.105.0-macos-arm64.tar.gz"
      sha256 "dc976416767adf6540e83603a00f6b1558a341feefcc1c13c95ad4cff4f6b3a4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.105.0/lightdash-cli-1.105.0-macos-x64.tar.gz"
      sha256 "ff385e4f9fe0db4348e429ce1cb8a291234d72190182543c513d439a66d4ffd4"
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
