class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2764.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.6/lightdash-cli-0.2764.6-macos-arm64.tar.gz"
      sha256 "140f816a8c9fb06e858cb28e6a1060e8efde9569ecc6c163e269b905b077a840"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.6/lightdash-cli-0.2764.6-macos-x64.tar.gz"
      sha256 "c7f64eca2e4e2501daa01c8e29f7edaf74570c77a5279c94f5e4db38037529a1"
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
