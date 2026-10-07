class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.452.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.452.0/lightdash-cli-2.452.0-macos-arm64.tar.gz"
      sha256 "df7f745ce9d4d75c7e8a30189f54db384826d6b6fd7de798577b8e7520d2b009"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.452.0/lightdash-cli-2.452.0-macos-x64.tar.gz"
      sha256 "35fe7f895f0563df05ff9b74de67c02ce4714983a433012aaf78642b4cae41f7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.452.0/lightdash-cli-2.452.0-linux-x64.tar.gz"
    sha256 "47b8b7a46d422f6a5557bafe7626df00f1e524a7a62182f548394638c2d3830f"

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
