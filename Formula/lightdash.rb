class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2787.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2787.0/lightdash-cli-0.2787.0-macos-arm64.tar.gz"
      sha256 "661488ac031873b8e9b5ea32688d72be12fc72d5c21b3eefee47fbd3e9fbf3ce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2787.0/lightdash-cli-0.2787.0-macos-x64.tar.gz"
      sha256 "87994a4b9587d6a40bb015f17b60778f5f91329223f1651cdf72abab22e05bae"
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
