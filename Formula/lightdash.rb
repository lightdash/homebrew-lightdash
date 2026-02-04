class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2417.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2417.1/lightdash-cli-0.2417.1-macos-arm64.tar.gz"
      sha256 "0f4c1626e3926ba58775ac42648a9ca7a7b98dd4a71d64bb3ae4815edbcde847"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2417.1/lightdash-cli-0.2417.1-macos-x64.tar.gz"
      sha256 "4bf07d8f0da5d40008062e3914d936c0d1ea02e90c59a4bff72aa073e3763b79"
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
