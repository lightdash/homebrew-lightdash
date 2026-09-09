class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.183.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.183.0/lightdash-cli-2.183.0-macos-arm64.tar.gz"
      sha256 "f4589b7d32939eb77c1cbea13a1cac25b6416729927de2f1c1b3576fdb641bda"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.183.0/lightdash-cli-2.183.0-macos-x64.tar.gz"
      sha256 "621aea80ea9518a945d4813ba0365522be0fe9364373e39688b5da7ad30b12fd"
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
