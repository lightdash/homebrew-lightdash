class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3278.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3278.0/lightdash-cli-0.3278.0-macos-arm64.tar.gz"
      sha256 "8e5f623bb087d471117990c93a338d6df0f68d5d4724c85ed80d6c2c9a028bc6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3278.0/lightdash-cli-0.3278.0-macos-x64.tar.gz"
      sha256 "180def3ae3dd0a530891bb31818dad2ea38c0cd28f6777251f0be60e210f1b62"
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
