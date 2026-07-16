class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3394.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3394.0/lightdash-cli-0.3394.0-macos-arm64.tar.gz"
      sha256 "8a779bae1ce1790512f8c9b1d5e207c495fe16f73c2d9009356c7b60bdbb0b87"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3394.0/lightdash-cli-0.3394.0-macos-x64.tar.gz"
      sha256 "996fc39a2138a6aa6a2ccbb20d1ca56a6b9c4b40cce4b13c60ac80c3247eff72"
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
