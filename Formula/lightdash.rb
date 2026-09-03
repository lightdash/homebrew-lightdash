class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.108.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.108.1/lightdash-cli-2.108.1-macos-arm64.tar.gz"
      sha256 "2c142f8fd6244d42e7c53ecaf1520221283d083788d3d337262175276f2148bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.108.1/lightdash-cli-2.108.1-macos-x64.tar.gz"
      sha256 "ed670cd75e52bfe6fd29b144f0686b09e235b13a050c29e23f641e7543b6c8bb"
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
