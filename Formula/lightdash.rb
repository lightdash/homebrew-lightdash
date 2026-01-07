class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2306.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2306.1/lightdash-cli-0.2306.1-macos-arm64.tar.gz"
      sha256 "bea2076748d7963c6677bfd749d17d559a6be22bed21b41f4e2bb27f8125b41a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2306.1/lightdash-cli-0.2306.1-macos-x64.tar.gz"
      sha256 "26978355b511a860f74fa354dbdfcdf850bf2bfe5589a519e18d5f1d1ce2ba2e"
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
