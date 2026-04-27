class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2811.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2811.4/lightdash-cli-0.2811.4-macos-arm64.tar.gz"
      sha256 "633935f032ddfca69c96fd634f4a41ce58bca15bcd874db8318dd866998ae412"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2811.4/lightdash-cli-0.2811.4-macos-x64.tar.gz"
      sha256 "218c8375cd343b4ec325dc63e53d0a1499b0889c2c6934d748c32d09fe8677c4"
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
