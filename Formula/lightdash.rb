class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2625.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2625.0/lightdash-cli-0.2625.0-macos-arm64.tar.gz"
      sha256 "7ae0ddc395e5b318dfc40e12c24e1e6b9f64d4d22f8f790686483d59b46a377a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2625.0/lightdash-cli-0.2625.0-macos-x64.tar.gz"
      sha256 "e860a3b35d3fa92eaf6b4d5965e56a4247f8d3618f7f7b764f422ae8c153431e"
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
