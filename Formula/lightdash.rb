class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2761.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2761.4/lightdash-cli-0.2761.4-macos-arm64.tar.gz"
      sha256 "246cd890ebb7d464bd3bc63f8828de14c1919d1ed4846c69c800ee8f926b1f43"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2761.4/lightdash-cli-0.2761.4-macos-x64.tar.gz"
      sha256 "6566e2f2f7d6b84542984800d2284f0fb6bf2340d2f4826ac838ebe41d6e0cdc"
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
