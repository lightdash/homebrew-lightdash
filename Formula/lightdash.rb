class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3406.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3406.1/lightdash-cli-0.3406.1-macos-arm64.tar.gz"
      sha256 "f7797f23c259bcc0a9f3a71b1a90edfe56de53bc95eadb7559f806d1e2e03792"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3406.1/lightdash-cli-0.3406.1-macos-x64.tar.gz"
      sha256 "80ea993c6d12e391dd2a7c26d60567ce6611236be02c30debb7cb3a512360895"
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
