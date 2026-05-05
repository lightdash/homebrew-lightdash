class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2868.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2868.0/lightdash-cli-0.2868.0-macos-arm64.tar.gz"
      sha256 "17bbfb32b9a1e59d67f3ee3e48d2f46a78d6f5d2d25c4decce5828ff2328187d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2868.0/lightdash-cli-0.2868.0-macos-x64.tar.gz"
      sha256 "3cc187f9a287244fd067c0147fdb2c46817aa52b69bece3c3c9126f050fad29f"
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
