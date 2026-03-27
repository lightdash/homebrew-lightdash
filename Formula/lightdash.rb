class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2675.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2675.1/lightdash-cli-0.2675.1-macos-arm64.tar.gz"
      sha256 "e7d1b4385c1dcc8b59337896eaaedc2b339c8a7e5f334ea1cbbb0a29303ddfaa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2675.1/lightdash-cli-0.2675.1-macos-x64.tar.gz"
      sha256 "2b3ba0804b85ceaf6642b7a03670b2960c49b206950f765a51378456be3d17d9"
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
