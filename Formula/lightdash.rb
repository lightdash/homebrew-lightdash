class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.603.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.603.1/lightdash-cli-2.603.1-macos-arm64.tar.gz"
      sha256 "7ff87ade7c34aed62d4c5ec00ab72c874f75719aa045b0e97b04ff1528e9f37d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.603.1/lightdash-cli-2.603.1-macos-x64.tar.gz"
      sha256 "b9365948adcb7744467736deb0b250db2beff8bbfb075ae613608600e2ef18dc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.603.1/lightdash-cli-2.603.1-linux-x64.tar.gz"
    sha256 "ea8a093da862e7ca906e93751537aadd6a0e46b2f55b47e0bb542433743c9c27"

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
