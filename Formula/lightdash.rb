class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2498.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2498.3/lightdash-cli-0.2498.3-macos-arm64.tar.gz"
      sha256 "fe8b885ea241dc6f0d7663ced49fd44d5668933072054fc6da151f3e6ae8fd06"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2498.3/lightdash-cli-0.2498.3-macos-x64.tar.gz"
      sha256 "5dab3d97d25e00da056f51a1ccf7cd54ab5b56f194d50788350083f34a9454dd"
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
