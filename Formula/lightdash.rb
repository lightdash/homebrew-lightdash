class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2828.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2828.0/lightdash-cli-0.2828.0-macos-arm64.tar.gz"
      sha256 "676bd325f0e6786f98ff72a8b1f266d262f1dc990cedbae0e205629d875e8bd0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2828.0/lightdash-cli-0.2828.0-macos-x64.tar.gz"
      sha256 "1f6976ddb7f431dde6d597920c845976eb51f5745af7d7037d55ed958b1488f0"
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
