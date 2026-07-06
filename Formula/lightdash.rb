class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3317.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3317.0/lightdash-cli-0.3317.0-macos-arm64.tar.gz"
      sha256 "442d18ffa333f141f0688982761565c1d6429903b3c6361dcc8a15195373309b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3317.0/lightdash-cli-0.3317.0-macos-x64.tar.gz"
      sha256 "f791e732c5c6c56f5dfe4582fa6456c39703c36bd3aac754a662c1597fe8a91d"
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
