class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2989.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2989.1/lightdash-cli-0.2989.1-macos-arm64.tar.gz"
      sha256 "d27c98116ed1e05fd3399ab9d809108013fe769d90b9c4855a2afc912855c8a2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2989.1/lightdash-cli-0.2989.1-macos-x64.tar.gz"
      sha256 "e69284de8a2a4853f665cf8147afce2c6ea1692ff84153fd34c5dae8aad4853c"
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
