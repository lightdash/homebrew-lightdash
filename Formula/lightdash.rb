class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.547.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.2/lightdash-cli-2.547.2-macos-arm64.tar.gz"
      sha256 "da29018a7ff44c38f16b7958ab994d4a07cfc4b23eadfbd1a9eb89116273964b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.2/lightdash-cli-2.547.2-macos-x64.tar.gz"
      sha256 "a93f321c9e9960acd175c799acb0ca0cf91669f97d380d22cb74b85cbf3d5927"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.547.2/lightdash-cli-2.547.2-linux-x64.tar.gz"
    sha256 "8965145cac1ff05ca1e5bc415acd905d3655dcbb1e7b13392ed2cb3098b5e730"

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
