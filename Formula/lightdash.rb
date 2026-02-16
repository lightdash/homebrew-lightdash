class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2472.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2472.0/lightdash-cli-0.2472.0-macos-arm64.tar.gz"
      sha256 "3448d1854be293bc2c29b62eeaaa0428d75cb449a839524e2688edfaf5250f0a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2472.0/lightdash-cli-0.2472.0-macos-x64.tar.gz"
      sha256 "77b38c2658e81a719140e052387663565512d63a14183781beff618d25a6c5fd"
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
