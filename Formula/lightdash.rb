class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2682.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2682.1/lightdash-cli-0.2682.1-macos-arm64.tar.gz"
      sha256 "e0930f483b29879cabd879d2bd74aa81d292f133c1931fd936d170a795c09ebf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2682.1/lightdash-cli-0.2682.1-macos-x64.tar.gz"
      sha256 "5c5491a1def8d87be93c8b1f6e2ebd900052b7fc720b41a7c9ed46664b8712d0"
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
