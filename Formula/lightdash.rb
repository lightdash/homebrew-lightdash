class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.31.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.31.1/lightdash-cli-1.31.1-macos-arm64.tar.gz"
      sha256 "e45a3973933b5cd2a5ecbe9ee973ee59dd70b289ac9130e07a1583c5951eccf4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.31.1/lightdash-cli-1.31.1-macos-x64.tar.gz"
      sha256 "649995e76ad05b6dc720d919ab513ceeb4871277106d2778b17332dad0a93266"
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
