class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2448.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2448.1/lightdash-cli-0.2448.1-macos-arm64.tar.gz"
      sha256 "a03cf1c5ce390c0c4565b20e56138441c9d301cacd388f0ae8195a1ada7d5157"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2448.1/lightdash-cli-0.2448.1-macos-x64.tar.gz"
      sha256 "f8101d78514e2b2506bf8d09984eb16f24c337a1e9d79a988233b46151710d1f"
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
