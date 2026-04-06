class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2724.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2724.5/lightdash-cli-0.2724.5-macos-arm64.tar.gz"
      sha256 "5630e77a91a2e30dd7ac0caa0d00ce41743e2374981d7b2b8bf9216429395da7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2724.5/lightdash-cli-0.2724.5-macos-x64.tar.gz"
      sha256 "45f838f1c8d9034f218c4caa6df061d3f6fff8de38bcefee2afad6ecc8dcdfee"
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
