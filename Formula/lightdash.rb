class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2251.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2251.0/lightdash-cli-0.2251.0-macos-arm64.tar.gz"
      sha256 "8df3942dedd503d9b314f7e09b69c8e7be95cca58f6956a5addc0208969d7771"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2251.0/lightdash-cli-0.2251.0-macos-x64.tar.gz"
      sha256 "e1f7d2bd84d1fce01a62f1e6d3523dba807ca7d9ab0b211b526ecc1125ddb9dd"
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
