class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2714.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2714.0/lightdash-cli-0.2714.0-macos-arm64.tar.gz"
      sha256 "8415f5a07386186affe8f820f5af54bccd52d7a9a7ac8e45df556faf5360debf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2714.0/lightdash-cli-0.2714.0-macos-x64.tar.gz"
      sha256 "80f95f5bd5b23d5290166ae033fa55a4a727c16a0a513049978eb6ea68d50d9e"
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
