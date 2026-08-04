class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.79.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.79.0/lightdash-cli-1.79.0-macos-arm64.tar.gz"
      sha256 "cf0efa4603dc5ce8997879aa0978689e3fccb0cf94e4a9899a6363ddd93fc063"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.79.0/lightdash-cli-1.79.0-macos-x64.tar.gz"
      sha256 "e8347c5625244100f78afd622ed9ddfef6ba650f5f4400a99e5fe7aa1a656a46"
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
