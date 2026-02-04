class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2418.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2418.2/lightdash-cli-0.2418.2-macos-arm64.tar.gz"
      sha256 "18e44c8634e1f0797f26a132fa7a9b427e07db0fd4d2db408eeb88a1131ed8ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2418.2/lightdash-cli-0.2418.2-macos-x64.tar.gz"
      sha256 "4c696ef190d61c95e4b06d881609edd3e0d264b08f26266dfea26ed5b8b012b1"
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
