class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2746.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2746.0/lightdash-cli-0.2746.0-macos-arm64.tar.gz"
      sha256 "74417ced26bf185a95b059efe94aaaa2d6f8d13c31f2bd5fb62064679c7624ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2746.0/lightdash-cli-0.2746.0-macos-x64.tar.gz"
      sha256 "78c0505b1d933cf69e4a304ad23c5a354f0a5e900edb6f5b0dd1a4a9c00f7099"
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
