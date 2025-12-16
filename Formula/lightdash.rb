class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2255.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2255.2/lightdash-cli-0.2255.2-macos-arm64.tar.gz"
      sha256 "276778339158ee193a94c794f82887f0e02c22cec241c618218b0181f5b413da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2255.2/lightdash-cli-0.2255.2-macos-x64.tar.gz"
      sha256 "62f428121540b4c1634df9e8a5e3c5bc881c2fd8fa2e0e2b0242ccb611be660b"
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
