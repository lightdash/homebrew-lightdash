class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.167.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.167.4/lightdash-cli-1.167.4-macos-arm64.tar.gz"
      sha256 "3e156b66763789aabd4ba7f1e149c924d501b24c0dcd1df51424f58a690a50f2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.167.4/lightdash-cli-1.167.4-macos-x64.tar.gz"
      sha256 "cee23f017c611567d357e34a24b13a3e4ca76002835b4eed1c7ac715ed0f4b32"
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
