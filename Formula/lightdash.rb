class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.58.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.58.0/lightdash-cli-3.58.0-macos-arm64.tar.gz"
      sha256 "7fd42f3d581909c960524f15c403c7014bf2145ead48194c17cf7f105a13bde5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.58.0/lightdash-cli-3.58.0-macos-x64.tar.gz"
      sha256 "6da5686d36dd2a77f4622da35d7db5e4cb34ba4cc9afa22f9fd544d2088373d3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.58.0/lightdash-cli-3.58.0-linux-x64.tar.gz"
    sha256 "19e8a300e59d7ff3db2e42165177d651c87f77b16bb1ce1c02c61110bdee7b36"

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
