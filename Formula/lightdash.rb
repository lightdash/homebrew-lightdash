class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.253.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.253.1/lightdash-cli-2.253.1-macos-arm64.tar.gz"
      sha256 "fe3f17cc18e2a5135925ed816aef9462c6bb855c7b631c9029cf162cda530829"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.253.1/lightdash-cli-2.253.1-macos-x64.tar.gz"
      sha256 "b5c1caf9eaae102b1047b5c04f09280e9f7f0d15a8a83d5ee318c56c88079250"
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
