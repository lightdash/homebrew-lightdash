class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.75.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.75.1/lightdash-cli-1.75.1-macos-arm64.tar.gz"
      sha256 "4fca2b4e2c759db37a541b06ef27f11a4e4dda98644fb584ed7ce2617c39e06e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.75.1/lightdash-cli-1.75.1-macos-x64.tar.gz"
      sha256 "c61b4ef9c97d5055c5c8e7266529b9c70c817c8d4dad627bd5c3fde52fc72000"
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
