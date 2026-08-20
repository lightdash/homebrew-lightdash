class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.219.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.219.1/lightdash-cli-1.219.1-macos-arm64.tar.gz"
      sha256 "96bee399b854722649160c8264b6c6fcae5ff079ef5278a9dc4ec9ed20191664"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.219.1/lightdash-cli-1.219.1-macos-x64.tar.gz"
      sha256 "54b66405082adb4b2f065c7e3b8275085f65bda3c4f042a8c11703f15019527c"
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
