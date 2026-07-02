class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3290.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3290.0/lightdash-cli-0.3290.0-macos-arm64.tar.gz"
      sha256 "64686067616dae583f88412815f6ebb52597b3e190cf0d774e8ea7295bd354e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3290.0/lightdash-cli-0.3290.0-macos-x64.tar.gz"
      sha256 "97f387620bc8e29424fe45f6f4bf2986781228a0a13c2bf31aaf652ec0646397"
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
