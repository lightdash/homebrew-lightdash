class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.415.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.415.5/lightdash-cli-3.415.5-macos-arm64.tar.gz"
      sha256 "68f9dac45a16a017602c8fbbeb5f09b59e2a303c4ca3908a8cd78217674fffc9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.415.5/lightdash-cli-3.415.5-macos-x64.tar.gz"
      sha256 "ae67f9c1b472826b140ce04c52300f8e59a8a015247c6a32107bbe4d12f813f4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.415.5/lightdash-cli-3.415.5-linux-x64.tar.gz"
    sha256 "0cf17f1f0025c20b58e906b85d7694f23f83612fe3b8927337af5e669180dbbb"

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
