class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.259.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.259.3/lightdash-cli-2.259.3-macos-arm64.tar.gz"
      sha256 "774302c9be1b7a104648835ad88ee739597c5eb234e064bd927b58c91f1b043f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.259.3/lightdash-cli-2.259.3-macos-x64.tar.gz"
      sha256 "318eb44eceb8e6ff42d006b6a343e1e59a5f8f8d02e01ed5b19ff453fdc5722c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.223.0/lightdash-cli-2.223.0-linux-x64.tar.gz"
      sha256 "a3581a82b02919725687376016164019d1cb54cb66d5bf31252d9c42cc2ed2a9"
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
