class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3171.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3171.0/lightdash-cli-0.3171.0-macos-arm64.tar.gz"
      sha256 "2f5b54a40ad1702428df489bbbf4b168ba548c6ec107d3786d0551b77d83ec78"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3171.0/lightdash-cli-0.3171.0-macos-x64.tar.gz"
      sha256 "28b584d0bd7124e4438ae0b547148ab368349bf5dc6324433ca237f461213fbf"
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
