class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.605.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.605.5/lightdash-cli-2.605.5-macos-arm64.tar.gz"
      sha256 "6f855a821b35aed080a0ef3aa99d6ac413f7bf815da1da805978ad43c8172cb0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.605.5/lightdash-cli-2.605.5-macos-x64.tar.gz"
      sha256 "fa82d90bdebd8f7c0819760e0e34629e29098a7be79ecd1a25b81afc9dcd1abf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.605.5/lightdash-cli-2.605.5-linux-x64.tar.gz"
    sha256 "9a6e3402bc231d0e4396e4e47767f6c9d3949b1eaecb069f628426518d272efb"

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
