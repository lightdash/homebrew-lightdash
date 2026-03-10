class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2598.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2598.0/lightdash-cli-0.2598.0-macos-arm64.tar.gz"
      sha256 "706485137063824d56f4112bbf4182593d1d94565046069d9bfc7d2223b808a5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2598.0/lightdash-cli-0.2598.0-macos-x64.tar.gz"
      sha256 "a6ffcae6e652fe8fd90ab9e340dc41603b615d377b79fa96892bab97064108b1"
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
