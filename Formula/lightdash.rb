class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.243.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.243.3/lightdash-cli-2.243.3-macos-arm64.tar.gz"
      sha256 "e2c9ea7fc7e1a3b86c0fb7c6c96b995bb94f025c93c151c67adcfaf9d4cf5faf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.243.3/lightdash-cli-2.243.3-macos-x64.tar.gz"
      sha256 "58768e0a7da732edf1bda633ecab68fded1a10298dd5ae4f2aaf2eb69683705e"
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
