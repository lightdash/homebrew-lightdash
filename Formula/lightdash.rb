class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.610.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.610.1/lightdash-cli-2.610.1-macos-arm64.tar.gz"
      sha256 "a990fb303496b6543267d87c8e5d842175fd6468299d86f6adf99f5752816d9e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.610.1/lightdash-cli-2.610.1-macos-x64.tar.gz"
      sha256 "c1bbdaf0c3355aea02c48a5c34319e2e2c31e8c11f8aeebf1b505506bb9c2d18"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.610.1/lightdash-cli-2.610.1-linux-x64.tar.gz"
    sha256 "2598de74bff2f5f85ddfa5d56f5831a2f136f78b95537369d1611a63508b1a58"

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
