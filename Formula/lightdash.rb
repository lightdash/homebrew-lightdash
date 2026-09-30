class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.399.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.399.0/lightdash-cli-2.399.0-macos-arm64.tar.gz"
      sha256 "d79ca0f3c2d9846f51015a38d0fb562ca91f24b5d642b8b4b6f56f3751878590"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.399.0/lightdash-cli-2.399.0-macos-x64.tar.gz"
      sha256 "c5303067173a9b60f0c608ac10de6a67f1089d41aef2095fc21f409681b27409"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.399.0/lightdash-cli-2.399.0-linux-x64.tar.gz"
    sha256 "4c9ef53394e2ecdcbceca0f0083c0d27ee72a205e7d17a49abedf350bcda9632"

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
