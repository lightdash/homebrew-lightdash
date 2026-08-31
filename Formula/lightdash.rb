class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.62.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.62.1/lightdash-cli-2.62.1-macos-arm64.tar.gz"
      sha256 "62e2370d3d5b2d78da679036e397d6545ea366d9f425258f47e4c106f2552dda"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.62.1/lightdash-cli-2.62.1-macos-x64.tar.gz"
      sha256 "38be1e524011c0c269a419471c7c7e0dc108ac6b85a3b7dfa3f38829a2b6930b"
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
