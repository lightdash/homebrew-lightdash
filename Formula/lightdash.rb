class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2927.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2927.0/lightdash-cli-0.2927.0-macos-arm64.tar.gz"
      sha256 "e26196a833483ba7467d69438a8a9dab5f8937346289f090e44814a4651eb2ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2927.0/lightdash-cli-0.2927.0-macos-x64.tar.gz"
      sha256 "700d17f691540d8e7dbd45157a9c389357cd0f44290d8d1707132c4481288e4b"
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
