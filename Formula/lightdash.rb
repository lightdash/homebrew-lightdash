class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3393.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3393.0/lightdash-cli-0.3393.0-macos-arm64.tar.gz"
      sha256 "e403460f1f5937a7d5dd601780679936ba70b94c69688851726b2e5a565bc9f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3393.0/lightdash-cli-0.3393.0-macos-x64.tar.gz"
      sha256 "c518dfd60bbf2d4d31cb272edb2ea69263b4ad527d4c593dfe82f14b1be5ed37"
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
