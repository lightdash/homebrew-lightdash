class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2544.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2544.1/lightdash-cli-0.2544.1-macos-arm64.tar.gz"
      sha256 "0d644281d4e61893e575f0e4c04d651e9ed143a8f89c2afc59bed65e6bd0658a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2544.1/lightdash-cli-0.2544.1-macos-x64.tar.gz"
      sha256 "a49ef3e5a35a9a48e9f5bd1aa935355658bfca52d6407886584dc9a34e249166"
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
