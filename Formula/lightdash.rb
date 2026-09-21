class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.286.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.0/lightdash-cli-2.286.0-macos-arm64.tar.gz"
      sha256 "d96c375a5d8b07d0ace8c952faede42bf013c07a9b1c58fa95153cfd6fbdfd7d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.0/lightdash-cli-2.286.0-macos-x64.tar.gz"
      sha256 "0c0b4534b37f3e032e1250c1078bbb42cf21ee3e71c346ea43dc8dc790c60bfb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.0/lightdash-cli-2.286.0-linux-x64.tar.gz"
      sha256 "829e2f710e8d93365ea4b4fe44e0786b349a366da7f3f5880d0e2c13e79fe680"
    end
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
