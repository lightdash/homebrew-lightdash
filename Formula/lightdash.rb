class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3190.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3190.0/lightdash-cli-0.3190.0-macos-arm64.tar.gz"
      sha256 "326bff8daf9beab7ed7cda6ecbd21d0105c4a7867e2f0a7b4bb1e8b2dfdbb45f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3190.0/lightdash-cli-0.3190.0-macos-x64.tar.gz"
      sha256 "d3c3385377b3c16b5ecf6761e172a43e79c9d5163e38c6796dd56ce224e36aac"
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
