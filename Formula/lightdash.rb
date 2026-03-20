class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2646.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2646.0/lightdash-cli-0.2646.0-macos-arm64.tar.gz"
      sha256 "eb9f2a5b5a40464206b9e0a4a1e7785ebf6cd22beb64cee197ad06270009ff70"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2646.0/lightdash-cli-0.2646.0-macos-x64.tar.gz"
      sha256 "b1e162d48421d927fa7d6dfc70010c0c4d9a7131f5f6098c6915b699576bc9bf"
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
