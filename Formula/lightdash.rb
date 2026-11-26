class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.411.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.0/lightdash-cli-3.411.0-macos-arm64.tar.gz"
      sha256 "5cbe6e1575b3b5c2ffbdcd07ae678000ea62dd6dd0e7382cc01080e6cf573458"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.0/lightdash-cli-3.411.0-macos-x64.tar.gz"
      sha256 "dccb75f63cddc72e0fcdd2c6ce5363303ded24a46a05bd770cc0f210a8b08a77"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.411.0/lightdash-cli-3.411.0-linux-x64.tar.gz"
    sha256 "09ec383f496a6fe2ce2602588593199b707b2d36187eb1f1c2c5c295abf35431"

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
