class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3095.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3095.2/lightdash-cli-0.3095.2-macos-arm64.tar.gz"
      sha256 "da767ca2ad37a9fd4ad376ca34aa44c1e6af1aad2937b1f49afde7ee986777ac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3095.2/lightdash-cli-0.3095.2-macos-x64.tar.gz"
      sha256 "09bcdc1143bd8f507d8ec5e7039e27ee8a6b0f9a67ea547f1e2cbe3476312aaa"
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
