class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2190.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2190.0/lightdash-cli-0.2190.0-macos-arm64.tar.gz"
      sha256 "da65b94d858d147545a84485c7a6905f9c16efb3e068f3db9b5996b8df2ade8e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2190.0/lightdash-cli-0.2190.0-macos-x64.tar.gz"
      sha256 "c8a0c81b16081c237a5eed263b2efd2adee08337d010115d89073a17e970b721"
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
