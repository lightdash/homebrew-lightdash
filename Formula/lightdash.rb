class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.327.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.327.0/lightdash-cli-2.327.0-macos-arm64.tar.gz"
      sha256 "b7fd277d3c526fddc4a00059b6023a944fd4c93808741b6dc364ec530339cd07"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.327.0/lightdash-cli-2.327.0-macos-x64.tar.gz"
      sha256 "bfe344d576ec8661401063db85ad17d5dc4a4e7b82063db482b5b5cd4d964354"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.327.0/lightdash-cli-2.327.0-linux-x64.tar.gz"
    sha256 "9e9fcb73e0440e13c5aa53290814e78486c964d9d2580d1d33640d1a1a47b1bf"

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
