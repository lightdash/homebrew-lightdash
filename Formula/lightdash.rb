class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2728.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2728.1/lightdash-cli-0.2728.1-macos-arm64.tar.gz"
      sha256 "35331caa40bcc1f255fa91057a3ad6e869f4fe8ac48702797daf5abcdbcb4013"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2728.1/lightdash-cli-0.2728.1-macos-x64.tar.gz"
      sha256 "93ff60fe929173dbcf534c67af8a67b420218dd3ff7fd4ff92f70ecb7fdf8799"
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
