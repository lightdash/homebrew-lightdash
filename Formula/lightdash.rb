class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2784.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2784.0/lightdash-cli-0.2784.0-macos-arm64.tar.gz"
      sha256 "b62cc66b00e6126d7c522805f284d5ec3f685d8754771f379c7e3559dcb4d2e1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2784.0/lightdash-cli-0.2784.0-macos-x64.tar.gz"
      sha256 "bb7ded62534edb05d9f98aad2d3997b32d39179c0825cddd9ecc9f4a55d87b08"
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
