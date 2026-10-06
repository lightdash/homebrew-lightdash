class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.446.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.446.0/lightdash-cli-2.446.0-macos-arm64.tar.gz"
      sha256 "8854747ffa4ec24ee3dba280529e1f78c58093f7f2e17b66e3c0fbe4cf27b16f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.446.0/lightdash-cli-2.446.0-macos-x64.tar.gz"
      sha256 "c4854c5f351afad98e545ae1dc4414d0c77e6ce74c6dfec938a7eee85b604be2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.446.0/lightdash-cli-2.446.0-linux-x64.tar.gz"
    sha256 "b38fa080eeb0501c77f3c0c417a5ef0c9538add05ce83540ef72501de71ab1c0"

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
