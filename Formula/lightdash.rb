class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2377.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2377.0/lightdash-cli-0.2377.0-macos-arm64.tar.gz"
      sha256 "c83b2bfcc20a95b7dd31ac704ef3bd7b1a1619345296d1b09ccfd52e6d0990b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2377.0/lightdash-cli-0.2377.0-macos-x64.tar.gz"
      sha256 "d28a757e5aa13aa4ed2d5e9aabad312a1e77af5312a1f59899256602a1fb8f3b"
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
