class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2834.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2834.1/lightdash-cli-0.2834.1-macos-arm64.tar.gz"
      sha256 "f5ed19a7e1e2726647db97b54ba91747f4be4558f13a0e3ce3335c1bdb3fc87d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2834.1/lightdash-cli-0.2834.1-macos-x64.tar.gz"
      sha256 "9ce01159de1d58256f34c8c2d5a8576011ca325ab035d334ce6863503e35bbcf"
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
