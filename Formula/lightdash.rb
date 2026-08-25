class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.260.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.260.0/lightdash-cli-1.260.0-macos-arm64.tar.gz"
      sha256 "75f0ec757096e24dfa396b7c40189dc37090aee4829660c15e1d82a5584ec56d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.260.0/lightdash-cli-1.260.0-macos-x64.tar.gz"
      sha256 "34aebd9ae9c3421906cf29b47008aa8f6f04bf04d70150d7ba0cdcc6e4669197"
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
