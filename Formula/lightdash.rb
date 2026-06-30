class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3263.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3263.2/lightdash-cli-0.3263.2-macos-arm64.tar.gz"
      sha256 "a79fc358efe2feb6d872c32aabdd3231d5e4d813e331633a79797733f84084c0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3263.2/lightdash-cli-0.3263.2-macos-x64.tar.gz"
      sha256 "86dade18ad9eab61694f592ba76d73f492959eac5259b83085bc2616f803b5e2"
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
