class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.325.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.325.0/lightdash-cli-3.325.0-macos-arm64.tar.gz"
      sha256 "ca7a965c48d46f435df6e929918e1893bb4c38323b213ac046f1a2bf1e212046"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.325.0/lightdash-cli-3.325.0-macos-x64.tar.gz"
      sha256 "5a200f28156f9898919cc4c256d9d3062512a28b2fd4ed704a6d9300713634f5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.325.0/lightdash-cli-3.325.0-linux-x64.tar.gz"
    sha256 "ae16c1c2ee10eb288f202ff912b7a482a34a38c60344a756c1c181935b43febe"

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
