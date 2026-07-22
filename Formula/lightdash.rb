class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3457.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3457.1/lightdash-cli-0.3457.1-macos-arm64.tar.gz"
      sha256 "5182446649eac680903dfd809c433a9a08614d5f78c5bcf26c50b9bd43fa06ff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3457.1/lightdash-cli-0.3457.1-macos-x64.tar.gz"
      sha256 "e9450a290e4f92e19190f84bdd3da8d9d6bd178a62c795861ca601e030ef1dc1"
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
