class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3168.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3168.0/lightdash-cli-0.3168.0-macos-arm64.tar.gz"
      sha256 "c1754a079d473127d3d96b798485a99afd20b5baf4899cc404265ac4355b9c1d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3168.0/lightdash-cli-0.3168.0-macos-x64.tar.gz"
      sha256 "4274e8bab17835fbb7927bfc28b9475f94a20cfef39738eb20f1aea2e1e56b53"
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
