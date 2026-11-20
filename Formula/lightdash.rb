class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.359.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.359.0/lightdash-cli-3.359.0-macos-arm64.tar.gz"
      sha256 "c2e9875fa178edc7ee256b45057933ad0e40f4d841372f31417ed8cbeddf6446"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.359.0/lightdash-cli-3.359.0-macos-x64.tar.gz"
      sha256 "35806960f15febc8f34443e86d58125380101014c049bd899495d8e43837e8bc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.359.0/lightdash-cli-3.359.0-linux-x64.tar.gz"
    sha256 "f1814ebeac67c3966de2d1ce2538aa69b1620338625d614ed0ab5f49d3614381"

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
