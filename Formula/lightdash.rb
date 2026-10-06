class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.436.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.436.1/lightdash-cli-2.436.1-macos-arm64.tar.gz"
      sha256 "a5c0d091ba066988c4ce2965d0fab685d3cd78fdec02ea99c8693b011ca2ef8f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.436.1/lightdash-cli-2.436.1-macos-x64.tar.gz"
      sha256 "83be0a168136b595e7eb1f4a5d19d847f084cf089751691aac78b4fa00c6bae4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.436.1/lightdash-cli-2.436.1-linux-x64.tar.gz"
    sha256 "cc2729982ce7df8b0182dfdb9993eb5855e78dc63e7e2f2a3970439274c776b3"

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
