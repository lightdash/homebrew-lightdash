class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3446.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3446.0/lightdash-cli-0.3446.0-macos-arm64.tar.gz"
      sha256 "7b7c6988928bebfe1cf780c86eecd61a6642c379bdd54ba0eb8a19845cdecfc9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3446.0/lightdash-cli-0.3446.0-macos-x64.tar.gz"
      sha256 "6d98b748862b61aa7877ab6543c580549d194e2b2e12bc5038950944b268d406"
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
