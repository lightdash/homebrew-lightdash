class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.606.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.1/lightdash-cli-2.606.1-macos-arm64.tar.gz"
      sha256 "bb3f62ffa72a5c4b8f4a2a20672f9143d55f2388100b56d13c3d70b3f226b071"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.1/lightdash-cli-2.606.1-macos-x64.tar.gz"
      sha256 "d5ed56a7b7b96af9e9e46d30987298688adfb79aa29c9d58a10985f6041ace79"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.606.1/lightdash-cli-2.606.1-linux-x64.tar.gz"
    sha256 "84de78d3fc40b6ed696e5cc10426b6437ff360f8578d527aa7f3a9cfec1ecdf4"

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
