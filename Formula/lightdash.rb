class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2740.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2740.0/lightdash-cli-0.2740.0-macos-arm64.tar.gz"
      sha256 "c516fcd6db04b2540ffcd58fe70cc7fe7f1a5efeb053519337fcb92aa59adf5e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2740.0/lightdash-cli-0.2740.0-macos-x64.tar.gz"
      sha256 "645c84a1826fd9f3dcbbcab94a968c6d72792eec1d95180daafa19225fb9d899"
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
