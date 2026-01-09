class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2321.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2321.0/lightdash-cli-0.2321.0-macos-arm64.tar.gz"
      sha256 "c02d794732ab7eb4ec5f601317b79042ba19756d86f42c0ab20a001e20105bb6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2321.0/lightdash-cli-0.2321.0-macos-x64.tar.gz"
      sha256 "5ab141cf742d4a750ed35627cf426546d41c3d6df8e1b91273104fe60aed0e80"
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
