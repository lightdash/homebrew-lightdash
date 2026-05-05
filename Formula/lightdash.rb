class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2870.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2870.0/lightdash-cli-0.2870.0-macos-arm64.tar.gz"
      sha256 "871a7bdbbe7226a97bddae2e99d961cedc8a62b46205bac9764b32861c98e7d1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2870.0/lightdash-cli-0.2870.0-macos-x64.tar.gz"
      sha256 "7317657d8d329e3abb984cac72bca76d126b876fb13680352b70ded8fdcbe315"
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
