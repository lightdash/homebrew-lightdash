class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.61.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.61.0/lightdash-cli-3.61.0-macos-arm64.tar.gz"
      sha256 "0969b0d3a26638e27dc56da0331c7efda3450ab1852c0e0f0a4b3e468c9344c7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.61.0/lightdash-cli-3.61.0-macos-x64.tar.gz"
      sha256 "ab574fc9cdffc7249ab1c0cd6706cfb26ada170e11aeabfce7936aaf43afa655"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.61.0/lightdash-cli-3.61.0-linux-x64.tar.gz"
    sha256 "7a2afb739090bc84a540327dd9c2e008df88cab9990e4cf0458972557f51c1c8"

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
