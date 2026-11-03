class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.128.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.6/lightdash-cli-3.128.6-macos-arm64.tar.gz"
      sha256 "40b1986693696f2f634c083a43c2bd2636e856c6a31782e5b2e88c018f93a1e2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.6/lightdash-cli-3.128.6-macos-x64.tar.gz"
      sha256 "8aa79d607fd9ad4190c99337f95d285df7c2a0bd0deef950c4245b5087373164"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.128.6/lightdash-cli-3.128.6-linux-x64.tar.gz"
    sha256 "e2f099596400cca83601a45b3e7083a65322eebf53412d473c2f0cf4739286ec"

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
