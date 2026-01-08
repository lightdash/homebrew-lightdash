class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2316.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2316.1/lightdash-cli-0.2316.1-macos-arm64.tar.gz"
      sha256 "d34c26a100be9fed48daf1e62c76484beaf48f3a26578dd82735b808b9933ec3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2316.1/lightdash-cli-0.2316.1-macos-x64.tar.gz"
      sha256 "6842397ecca1ae78a7ebabe425853926fef3c2640201c8fd490063b29456d007"
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
