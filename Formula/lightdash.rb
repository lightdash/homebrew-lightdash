class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2418.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2418.1/lightdash-cli-0.2418.1-macos-arm64.tar.gz"
      sha256 "adac62fd66799294284f29fac554b2676c865bbcd07a22c543b016826a9577e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2418.1/lightdash-cli-0.2418.1-macos-x64.tar.gz"
      sha256 "fae06a5195fb1c48292e6e1964750771488a8a6f6bf5113cc64baa9aaff97763"
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
