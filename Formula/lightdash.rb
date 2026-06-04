class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3089.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3089.1/lightdash-cli-0.3089.1-macos-arm64.tar.gz"
      sha256 "aef3a9e2663d01e70f2591cd5f6fa6ad037dbbf55ac277ae8de0a9d5c887e7bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3089.1/lightdash-cli-0.3089.1-macos-x64.tar.gz"
      sha256 "74dc4cb4ffc5ba6773cbc586b35d4f6eebdc92289b28921c10331994943af068"
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
