class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.578.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.578.0/lightdash-cli-2.578.0-macos-arm64.tar.gz"
      sha256 "d37e49acffa3c5b496db3a8841b75ff161db95f8e9fe56302522050ee66d5f99"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.578.0/lightdash-cli-2.578.0-macos-x64.tar.gz"
      sha256 "f42e76e1491df16ccc084e4c30d3e62a8946faa0bb433faaa2e425984206bc48"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.578.0/lightdash-cli-2.578.0-linux-x64.tar.gz"
    sha256 "89e0e92f857a8c590b081e78f8f4a8af6bd0fcb886e698145f9625b76d12dc39"

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
