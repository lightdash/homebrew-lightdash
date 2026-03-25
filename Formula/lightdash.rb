class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2662.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2662.3/lightdash-cli-0.2662.3-macos-arm64.tar.gz"
      sha256 "e178684e24f96e4077b757af6bf6ba10b2c2743443d05c4fad8ddf85565d87bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2662.3/lightdash-cli-0.2662.3-macos-x64.tar.gz"
      sha256 "43deb5f709ddc4120f2553b9a3de1938eb357b6c3f8a408cb5ce7cbe8745af41"
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
