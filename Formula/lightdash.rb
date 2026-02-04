class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2418.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2418.0/lightdash-cli-0.2418.0-macos-arm64.tar.gz"
      sha256 "7bbb121feb8029a7862464fbcb0c2b1feaa05efe765a92a2039fa2a0da579e2b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2418.0/lightdash-cli-0.2418.0-macos-x64.tar.gz"
      sha256 "7dc5dc8e23157cf55ae60a1f3d67a5ee32efa4955ef11336d0b63f52f50ab890"
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
