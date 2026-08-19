class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.200.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.200.0/lightdash-cli-1.200.0-macos-arm64.tar.gz"
      sha256 "c2d1a841a67a37e1b209af58d6f99af50de93e47cc8c8ebcef3be02b30f81ecb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.200.0/lightdash-cli-1.200.0-macos-x64.tar.gz"
      sha256 "a14519865ac5fc821854be24988d6557def92a2cd86bd3fca20da7ce8ad63ff6"
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
