class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2492.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2492.1/lightdash-cli-0.2492.1-macos-arm64.tar.gz"
      sha256 "ac0812e11ce3f8fe7ff995ba7dc5cd10bb6b409c5638a362665dd3057b53fa41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2492.1/lightdash-cli-0.2492.1-macos-x64.tar.gz"
      sha256 "60617235dfbda3d0ccfc011fabd37c0cca14ef785c70f7e4eb5d60a4c981d923"
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
