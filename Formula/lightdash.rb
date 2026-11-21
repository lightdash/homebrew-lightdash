class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.360.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.360.0/lightdash-cli-3.360.0-macos-arm64.tar.gz"
      sha256 "56fde776001d029cd9d9fb4945f7911de263f25386b1f86cad2a10e083a59d7a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.360.0/lightdash-cli-3.360.0-macos-x64.tar.gz"
      sha256 "ebb0349e3c4490a7d8dec6feceaa180b25d2e89eecd0c20a6c701ae076b8bc2a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.360.0/lightdash-cli-3.360.0-linux-x64.tar.gz"
    sha256 "0970404bca88ed51632a490e39ed83700c062f29f44f6cda8d698655c2ba4afc"

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
