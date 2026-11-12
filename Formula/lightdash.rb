class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.226.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.226.0/lightdash-cli-3.226.0-macos-arm64.tar.gz"
      sha256 "534561b4301b6e7dcd49bc62bcdd76e61b264796564a0874a38cc2d4657667a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.226.0/lightdash-cli-3.226.0-macos-x64.tar.gz"
      sha256 "e304c7794aaa2ffcef140da627e89a9f828daf9553a0e7bf5880faa4220b683b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.226.0/lightdash-cli-3.226.0-linux-x64.tar.gz"
    sha256 "02f96ecd2e6a4b2735ac00c0e47f7b4d4c00c0527fbf4677ac3a65631f76b301"

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
