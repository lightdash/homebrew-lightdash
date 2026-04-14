class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2757.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2757.2/lightdash-cli-0.2757.2-macos-arm64.tar.gz"
      sha256 "30d03d36206f5845c3917ff519261f9aed7c10b3112720cf50dc7e56c00b6a63"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2757.2/lightdash-cli-0.2757.2-macos-x64.tar.gz"
      sha256 "0b950c93c043c99fc8df41746b2ff5ad7d50b72c92e00a8b6d2e1af2e38afcce"
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
