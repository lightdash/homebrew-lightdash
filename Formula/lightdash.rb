class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.274.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.0/lightdash-cli-2.274.0-macos-arm64.tar.gz"
      sha256 "9ad89ddfb05b185d9111b97f18cecb5df928da8c3ad7d259d33f3a3717b85e2c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.0/lightdash-cli-2.274.0-macos-x64.tar.gz"
      sha256 "ca3c82da41a67dc4bb478773f4426829868bd264fbe195a79b8747b579c5f700"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.0/lightdash-cli-2.274.0-linux-x64.tar.gz"
      sha256 "375df6d99dc54c772c55e1c21ed4a99fc568279e3d8f8fcf67d5fbe2532292fe"
    end
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
