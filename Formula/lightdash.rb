class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.67.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.67.5/lightdash-cli-2.67.5-macos-arm64.tar.gz"
      sha256 "5a4b8fd6f5612f7d2958f6b46a289dc0f1a1e7af6a62f8f8d3a1db4f793ee140"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.67.5/lightdash-cli-2.67.5-macos-x64.tar.gz"
      sha256 "c2fa633158e370fb7674430425da1d9344d3ce3bccacc23254749a9b56c424bf"
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
