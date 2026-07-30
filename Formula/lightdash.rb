class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.48.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.48.0/lightdash-cli-1.48.0-macos-arm64.tar.gz"
      sha256 "a2d7823490f5d5db949343a8286d25ad9be18da82f2a3de8baf326615e1e484e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.48.0/lightdash-cli-1.48.0-macos-x64.tar.gz"
      sha256 "8a1d9d367ace2c7f0fd16aca365e2e39cce1d7fbea38f54f99d4b121511acccd"
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
