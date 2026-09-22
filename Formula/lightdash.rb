class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.294.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.294.0/lightdash-cli-2.294.0-macos-arm64.tar.gz"
      sha256 "372cb10c2098abd82ca0413f83003c6041019d646bac7462615db488b71142f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.294.0/lightdash-cli-2.294.0-macos-x64.tar.gz"
      sha256 "cf23b20f7a6e38410b917decddf7e90583cb043f3cf9e503b3d4a3c7c427e21a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.294.0/lightdash-cli-2.294.0-linux-x64.tar.gz"
    sha256 "c3f95ede1f97e072bd75b944aebcbffffbb897e12d1c8a37dfaec05dbd3baf3f"

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
