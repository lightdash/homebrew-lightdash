class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.234.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.1/lightdash-cli-3.234.1-macos-arm64.tar.gz"
      sha256 "fcd6d5a9440a59e7304c61a29708cdec29a08b82d87731f4e460618232768b96"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.1/lightdash-cli-3.234.1-macos-x64.tar.gz"
      sha256 "b49f96a7f4fd3196a35f5b88a0b7ecfaddfbca97b4882e0971021968550997ea"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.234.1/lightdash-cli-3.234.1-linux-x64.tar.gz"
    sha256 "c2b462479740dfacb5b5858d503d3a939291b6a8b1a9a6734c328658bb82a40f"

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
