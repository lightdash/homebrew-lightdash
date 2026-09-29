class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.371.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.371.1/lightdash-cli-2.371.1-macos-arm64.tar.gz"
      sha256 "856b47f3b8aea051284d689f01c32786f1c8c0918070ba8aaadee4092e9139d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.371.1/lightdash-cli-2.371.1-macos-x64.tar.gz"
      sha256 "326e37aa4e5fbb02c3deb08e77624824abc7f78414e8962ca65b225c7c31fb0c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.371.1/lightdash-cli-2.371.1-linux-x64.tar.gz"
    sha256 "a087f3e7cfaad19950d8a7909628cb55269bd523d16c405c950eea168e04b2c2"

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
