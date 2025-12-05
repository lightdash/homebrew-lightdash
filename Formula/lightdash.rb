class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2231.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2231.0/lightdash-cli-0.2231.0-macos-arm64.tar.gz"
      sha256 "91f2bfea0906c50bec5cbfe164ac029c3589c30975afd00180c2eff72ee26a6a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2231.0/lightdash-cli-0.2231.0-macos-x64.tar.gz"
      sha256 "42b2033787d5acb6571941a280a0bd0400ae202928bac5d0d78274f88f253eca"
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
