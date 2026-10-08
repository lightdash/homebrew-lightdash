class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.486.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.486.0/lightdash-cli-2.486.0-macos-arm64.tar.gz"
      sha256 "71d49bdff1bd2eda048c1dc56dcea031730cec8eec5049807f9716214febe1e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.486.0/lightdash-cli-2.486.0-macos-x64.tar.gz"
      sha256 "699ffb4eea94c9158b49ca030d26d7c6fcc01d9b78169d751600d631d82efa8f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.486.0/lightdash-cli-2.486.0-linux-x64.tar.gz"
    sha256 "ef28d146aed1f05f0e707b835c6e649f2fd5caa88ce39cc32b9e6a58b0f42371"

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
