class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.108.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.108.4/lightdash-cli-3.108.4-macos-arm64.tar.gz"
      sha256 "90fcd4b2f3a336086200578c3c8d528c8f71d902fff1c32842f65c003f7344c7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.108.4/lightdash-cli-3.108.4-macos-x64.tar.gz"
      sha256 "8641114cd63a55c721762031d42aec9dbb7919e7c27108ad4fd63e2d64b9f632"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.108.4/lightdash-cli-3.108.4-linux-x64.tar.gz"
    sha256 "995c3d1a0c6cf7d3cbd7b456106faad0626665eb35a11ceddbe9b96a586ed2e4"

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
