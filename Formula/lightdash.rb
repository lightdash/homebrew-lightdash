class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2623.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2623.0/lightdash-cli-0.2623.0-macos-arm64.tar.gz"
      sha256 "9b7c9df183e51c12e162d26932f37ae020e63d5961ac5a033d2eac46149c3b56"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2623.0/lightdash-cli-0.2623.0-macos-x64.tar.gz"
      sha256 "46f87c78e6b1daa05682029b778a3e6f8038db2a7ba4b5131d7b9c99adf904d6"
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
