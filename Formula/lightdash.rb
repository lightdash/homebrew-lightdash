class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2618.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2618.1/lightdash-cli-0.2618.1-macos-arm64.tar.gz"
      sha256 "d09d1b5b837481fa7e7aeb956a6a0b48b108918612fa00607cb8bc96f860c4a4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2618.1/lightdash-cli-0.2618.1-macos-x64.tar.gz"
      sha256 "c1089e84213ad701ecb1364254039a3e9e5296976a4f1f307948bb2af7d1894d"
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
