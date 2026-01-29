class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2394.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2394.2/lightdash-cli-0.2394.2-macos-arm64.tar.gz"
      sha256 "348ebe68affc27f290528415791848704cbf946872473d431b706c0a0f186e17"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2394.2/lightdash-cli-0.2394.2-macos-x64.tar.gz"
      sha256 "721b1a7424b291d94322fede23fb02e0483651afce2894bdd9f44032f0199289"
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
