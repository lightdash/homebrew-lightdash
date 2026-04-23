class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2786.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2786.0/lightdash-cli-0.2786.0-macos-arm64.tar.gz"
      sha256 "6cc3be2a8b6175a5d53e7164cb9a2f7395b2f813b0e3b14a09db9f9b4fdbdd5d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2786.0/lightdash-cli-0.2786.0-macos-x64.tar.gz"
      sha256 "079f96647ddf9da1ece218f8d9389a841e2c0b56effd04930abd7651c07e7114"
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
