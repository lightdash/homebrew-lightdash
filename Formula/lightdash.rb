class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2449.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2449.0/lightdash-cli-0.2449.0-macos-arm64.tar.gz"
      sha256 "757c5732a41c30c7bfa1a8d5b6b1231a9315a29cf0b3e55ee2f6d1e13eec8bba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2449.0/lightdash-cli-0.2449.0-macos-x64.tar.gz"
      sha256 "593eb6db90f5ea50671a23e83a8749f42cd3a14407167892ed1ce942f0029a4d"
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
