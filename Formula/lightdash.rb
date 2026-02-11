class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2455.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2455.1/lightdash-cli-0.2455.1-macos-arm64.tar.gz"
      sha256 "da3b413f89443aa2e53fc7ca4b49b297a3eb63b5caa82b1475594e62f3c6e589"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2455.1/lightdash-cli-0.2455.1-macos-x64.tar.gz"
      sha256 "01488f58037da1e0295eb7c79a209a511927881cc997876bb2481699a03bd2d4"
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
