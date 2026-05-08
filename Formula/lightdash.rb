class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2903.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.8/lightdash-cli-0.2903.8-macos-arm64.tar.gz"
      sha256 "1b14eb039388f68d11a91da0c67a3cd5b2dfe49134ed796b0e6d48a63812f997"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.8/lightdash-cli-0.2903.8-macos-x64.tar.gz"
      sha256 "0c1f40533147691c1e34998f312106e2649cbdc4070cdde52bf92613d3ec5fd7"
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
