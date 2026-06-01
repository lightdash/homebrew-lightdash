class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3070.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3070.0/lightdash-cli-0.3070.0-macos-arm64.tar.gz"
      sha256 "cce3fc6b306fa0a09b5da9d0cb9e7c0969f27617c120a06f6826c0a353658f8b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3070.0/lightdash-cli-0.3070.0-macos-x64.tar.gz"
      sha256 "34d31285381dc9b92601e996a69fed32a1c60d0d5ed4805e2c9c5e262faaa58f"
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
