class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.123.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.123.1/lightdash-cli-1.123.1-macos-arm64.tar.gz"
      sha256 "4c28e43c4bbc7afb0bb85909bc1e3dd07ef1cd88d310c94a0fd274d0d9e737fc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.123.1/lightdash-cli-1.123.1-macos-x64.tar.gz"
      sha256 "95a06ef5531a19f14c4af694cec9c8563357b0a8c46cf97ce67083df6c67520f"
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
