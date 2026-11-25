class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.400.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.400.0/lightdash-cli-3.400.0-macos-arm64.tar.gz"
      sha256 "5af50c6fa3d9d2b9264f58f60770712b96b9a1801050112996185e7824e16870"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.400.0/lightdash-cli-3.400.0-macos-x64.tar.gz"
      sha256 "6bf811592819dd0bdad5c3f4c7b6332fe91dac5b9492c939b212e37ab879fc45"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.400.0/lightdash-cli-3.400.0-linux-x64.tar.gz"
    sha256 "a31f462db7026f39825308d8f2a1ba64c308d8fdc165e8cc69f8b3e970723f30"

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
