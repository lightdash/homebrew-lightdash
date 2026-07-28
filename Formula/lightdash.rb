class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.18.0/lightdash-cli-1.18.0-macos-arm64.tar.gz"
      sha256 "a5d9496b2ddeb600dadb8363a374b88dff92832d4b8c1790e8329f1b1dd1b61b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.18.0/lightdash-cli-1.18.0-macos-x64.tar.gz"
      sha256 "36573f3e9a3f658117d65b7fa73da689fe42cc7152dc37ed4ea377ef4991bb89"
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
