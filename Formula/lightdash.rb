class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.174.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.174.0/lightdash-cli-3.174.0-macos-arm64.tar.gz"
      sha256 "a5a4b0eaa2c384760614128591a16b9a70c0f6c40e2598bc683a458f4b852beb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.174.0/lightdash-cli-3.174.0-macos-x64.tar.gz"
      sha256 "d5a88500dc628b69ed38d68f4f7fb0a2114d290384f30d8342cd68aaece93f89"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.174.0/lightdash-cli-3.174.0-linux-x64.tar.gz"
    sha256 "6265c7d8666314c37eabeacf7e787f856432f2524c24375fe6befcd721af6c2f"

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
