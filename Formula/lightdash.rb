class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.169.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.2/lightdash-cli-3.169.2-macos-arm64.tar.gz"
      sha256 "55506afda4d34483ad5ccd59cb680ed6cb1fee9a89dca8aec9a294654e82c9dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.2/lightdash-cli-3.169.2-macos-x64.tar.gz"
      sha256 "36edc2c75c2d0b875447792e25032792bb697d70dcfecbd01add0906140e0a19"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.169.2/lightdash-cli-3.169.2-linux-x64.tar.gz"
    sha256 "9992ed1f42d3361576264329e4644bda39df4b574c9022d3543d18e16077eeba"

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
