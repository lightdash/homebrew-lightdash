class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.82.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.82.0/lightdash-cli-1.82.0-macos-arm64.tar.gz"
      sha256 "0e1fe0adb9919eafc4eb24cfcc8f9106a01fbaffaee89ba08d951aed39ed0a2c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.82.0/lightdash-cli-1.82.0-macos-x64.tar.gz"
      sha256 "3006c628bb0f3c9ddd429f507c1bb49508b193ecfbdc730377f37705340a1a6e"
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
