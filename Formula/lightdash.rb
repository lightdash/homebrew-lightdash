class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.312.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.312.0/lightdash-cli-2.312.0-macos-arm64.tar.gz"
      sha256 "8e983a9f72786e8cf26c1411839afe34e61fbfcb7de6b2a60f5a7d8330df6dc5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.312.0/lightdash-cli-2.312.0-macos-x64.tar.gz"
      sha256 "98bd4b6d420df643fd8c0a3dadaf4911ef1975ee7954f3439644871ce7a5e36f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.312.0/lightdash-cli-2.312.0-linux-x64.tar.gz"
    sha256 "8a559bea8f48ee54f4fb2e829d14e1759d5fa9f79b0a52af3eee421fe8650054"

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
