class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2950.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2950.1/lightdash-cli-0.2950.1-macos-arm64.tar.gz"
      sha256 "bef425528fbf6bfcc0d06599073ee7cb79cfa74dadcbf3d8f1b3aa446eff70ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2950.1/lightdash-cli-0.2950.1-macos-x64.tar.gz"
      sha256 "a90281f90dbae8b739d3a7673d89fda07893c2b1ede0f44773283fea0bd4752e"
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
