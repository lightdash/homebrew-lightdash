class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.294.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.294.1/lightdash-cli-2.294.1-macos-arm64.tar.gz"
      sha256 "1fb65f48e0611cb2bb5a6a25c775dde6ede6cc72f2d2d9790ce576a869da3a7d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.294.1/lightdash-cli-2.294.1-macos-x64.tar.gz"
      sha256 "4ab6f2d78e0f85237c21081524bf614c9469089a4154cc17b70dffdae8887f1b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.294.1/lightdash-cli-2.294.1-linux-x64.tar.gz"
    sha256 "d23079938a3d02ed20478fdb9a15883a879506b73063f289d69c1be696ad89ca"

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
