class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.223.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.223.0/lightdash-cli-1.223.0-macos-arm64.tar.gz"
      sha256 "50bef485479ad07b887024f22b2122066b4979411af0f409df86f05824b0540c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.223.0/lightdash-cli-1.223.0-macos-x64.tar.gz"
      sha256 "2c07f15da1fa7837da6e2a4fe55de6d1f06b4adea897105dc469904f789cad3e"
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
