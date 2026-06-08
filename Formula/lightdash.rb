class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3110.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3110.5/lightdash-cli-0.3110.5-macos-arm64.tar.gz"
      sha256 "c2844e2e2f7119246024113479245e3fed996169b96c2c6864a66dd6981ced8d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3110.5/lightdash-cli-0.3110.5-macos-x64.tar.gz"
      sha256 "387c1f02aa0ea577f8604b27b9f3d18b0dfc7ebce3a8f3c4d80bad2716b136c0"
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
