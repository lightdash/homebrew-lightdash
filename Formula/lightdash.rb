class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.227.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.227.0/lightdash-cli-3.227.0-macos-arm64.tar.gz"
      sha256 "0bed5b73f4ab7915390d1c164d19f002bd975f0333c72c7c8e5240d2e3cd9a52"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.227.0/lightdash-cli-3.227.0-macos-x64.tar.gz"
      sha256 "d0e2b070d4d339a575d94810dae45990e63c9a1553f489b47132453168e42c3f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.227.0/lightdash-cli-3.227.0-linux-x64.tar.gz"
    sha256 "3127252fc995b16f83701113964a35758e2400541bca2fd20c9bc2aafcc7a378"

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
