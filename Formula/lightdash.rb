class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.457.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.457.1/lightdash-cli-2.457.1-macos-arm64.tar.gz"
      sha256 "1b01c59cc8d20f6ca9f3e12399c6de161cc527fafcb48b32e2e27d54fbe2896f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.457.1/lightdash-cli-2.457.1-macos-x64.tar.gz"
      sha256 "821eb1210a140e0ad8a018c4834a39a995950ce89a5b0c90bf99f51ca1931791"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.457.1/lightdash-cli-2.457.1-linux-x64.tar.gz"
    sha256 "cdab36f452459453f003c1f52cf35ea97cd941c60ccbc7dc2b3fb3841833e0b1"

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
