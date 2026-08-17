class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.171.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.171.0/lightdash-cli-1.171.0-macos-arm64.tar.gz"
      sha256 "ed2662dd2a5c9aa5cfb7efc81fb53e37a8a9158b9053fa338f5a737c0daefad8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.171.0/lightdash-cli-1.171.0-macos-x64.tar.gz"
      sha256 "eedc75f78a0d722bf16a9fa2cf3fe6222931cfe1a5f0ded5a634413793cbc66b"
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
