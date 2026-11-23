class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.374.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.374.0/lightdash-cli-3.374.0-macos-arm64.tar.gz"
      sha256 "8b5bcd854fd93a3602476ac8a3bd4383e933c49ac54d3b1b3dbd94eb13fe5f36"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.374.0/lightdash-cli-3.374.0-macos-x64.tar.gz"
      sha256 "dcc8e5ca00a733c6a500dfd8464c44cc57544c26e5bcb4fb7c1a3b8e1499c1ea"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.374.0/lightdash-cli-3.374.0-linux-x64.tar.gz"
    sha256 "68db1cb5aa700527ab705cbacd3a8c9f545c8f4bf6982ec899a88271b1acc7d3"

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
