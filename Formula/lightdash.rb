class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.192.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.192.0/lightdash-cli-2.192.0-macos-arm64.tar.gz"
      sha256 "e2538458410af5bd752af7233fdb0118984288e457c754bc7f62ca909b3451a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.192.0/lightdash-cli-2.192.0-macos-x64.tar.gz"
      sha256 "28a768392a0e1010d489f3048bbfbe7ba766e6b5784a8b38dc4bca2857034e10"
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
