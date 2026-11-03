class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.131.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.131.0/lightdash-cli-3.131.0-macos-arm64.tar.gz"
      sha256 "ffc0d76d71615754595b0000a4fd4519142a5f2f6561192b9e759843b7821578"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.131.0/lightdash-cli-3.131.0-macos-x64.tar.gz"
      sha256 "c669650127335c2785f06cb9d2b5fa0a7832c9316266e7e76089835890150c49"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.131.0/lightdash-cli-3.131.0-linux-x64.tar.gz"
    sha256 "79d81495b549844682e4d0097246d5d4f6c6ca9b131c865489bdcbc364f4bf40"

    depends_on arch: :x86_64
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
