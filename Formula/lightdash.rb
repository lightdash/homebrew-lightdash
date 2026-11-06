class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.169.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.6/lightdash-cli-3.169.6-macos-arm64.tar.gz"
      sha256 "3ad97eac5e0ee9f0fdbcb1f637f8a1696a40c0fdde2d88b054b923b307c61641"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.6/lightdash-cli-3.169.6-macos-x64.tar.gz"
      sha256 "feddc48e77df9f076a616e9512e2c2b6c2693c9e8df5d3d26b851e0f3bd8763c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.169.6/lightdash-cli-3.169.6-linux-x64.tar.gz"
    sha256 "65593a2a45e96e0965edbebb91fd5d772d8aa3914c1836a5969f54463a0de914"

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
