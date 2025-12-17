class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2262.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.2/lightdash-cli-0.2262.2-macos-arm64.tar.gz"
      sha256 "736e0e6c91e10c1e764acbce0eacebaa927de6e38fc22bfe8f5e1d2a5ce9343a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.2/lightdash-cli-0.2262.2-macos-x64.tar.gz"
      sha256 "cce3c0e02cecab51b60a3691b60cb0ad20760077911075dcefb15842c04a3a77"
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
