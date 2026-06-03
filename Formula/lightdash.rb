class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3086.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3086.0/lightdash-cli-0.3086.0-macos-arm64.tar.gz"
      sha256 "2f7b5b71de3a20aa91e48b0c90f544d4cf16dc3139d19883b6a5b75aee9c5c5b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3086.0/lightdash-cli-0.3086.0-macos-x64.tar.gz"
      sha256 "55a7c7b36c0b8a8fbcdda4991b47a1a59d45f2ff5ec2e3cb658278e1e4c42dcd"
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
