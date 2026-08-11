class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.121.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.121.1/lightdash-cli-1.121.1-macos-arm64.tar.gz"
      sha256 "e1dcae4a71b973811bdf7d5648ac7d4b9c79d3089f4eeb625dacea473e8a0a17"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.121.1/lightdash-cli-1.121.1-macos-x64.tar.gz"
      sha256 "bd24f8c8ab51c902bd0cfe70ed7bdf3c47ff6047a119186cf4b01a163dbf38dc"
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
