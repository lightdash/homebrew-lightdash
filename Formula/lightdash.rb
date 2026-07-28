class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.13.0/lightdash-cli-1.13.0-macos-arm64.tar.gz"
      sha256 "7c533c024f9ee63b530a0794b3a4a08a1ca0a1a68d469ebbaa4f7cd7f3444bad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.13.0/lightdash-cli-1.13.0-macos-x64.tar.gz"
      sha256 "65540f8474419c64c3d36fa12ab640bd2efd10994b977708fdab4f04d914c2f7"
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
