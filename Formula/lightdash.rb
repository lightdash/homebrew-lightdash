class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.222.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.222.0/lightdash-cli-2.222.0-macos-arm64.tar.gz"
      sha256 "a4ad1aa4d0ae6057ebc8c4b32cade8030765e9c7c98d6958a2ec5959976c41d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.222.0/lightdash-cli-2.222.0-macos-x64.tar.gz"
      sha256 "c342a39b0ed5089ec9970a15184c211acfe8fd7b155972640592ec4c4d2b06c0"
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
