class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.274.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.5/lightdash-cli-2.274.5-macos-arm64.tar.gz"
      sha256 "5eb34876146e78147e260c725007bc85bb41a05dce27a8d930939bca76e352a0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.5/lightdash-cli-2.274.5-macos-x64.tar.gz"
      sha256 "260738c52416faffe7e5f9e6ec3c72710f5e71f34f3e2fa36fa7d706ae8c4d4a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.5/lightdash-cli-2.274.5-linux-x64.tar.gz"
      sha256 "f9c41a01813e31e4b58627c36aa3e9a600d880265791a1983bb66a823bc096c4"
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
