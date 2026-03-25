class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2666.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2666.0/lightdash-cli-0.2666.0-macos-arm64.tar.gz"
      sha256 "0717d3873256542326b189171022002018349898be2e03d8986b07a88ef71155"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2666.0/lightdash-cli-0.2666.0-macos-x64.tar.gz"
      sha256 "856774e3724cc8a141fb658e2b71bff6783162efec3b02415a269f11e5ad5f97"
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
