class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.89.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.89.2/lightdash-cli-2.89.2-macos-arm64.tar.gz"
      sha256 "76d5071661a1ca8826cce37f77f9e9ed99f7f81ef7627746538d740ceff41812"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.89.2/lightdash-cli-2.89.2-macos-x64.tar.gz"
      sha256 "942f1cd04674d84fd4e7f9e2ab72a94923fcb0cbf0e6f79d90d697405fc5954f"
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
