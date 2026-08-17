class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.167.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.167.3/lightdash-cli-1.167.3-macos-arm64.tar.gz"
      sha256 "b66a59442b8327d8f8b0257e69ee2bcfacc3dd52b4ee7e877d9e5dcfa90e3669"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.167.3/lightdash-cli-1.167.3-macos-x64.tar.gz"
      sha256 "6b58bb930869816f51fbc8a3e6d811e0e99215a529a9e0083890063266507de0"
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
