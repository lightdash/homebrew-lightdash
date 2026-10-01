class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.410.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.410.0/lightdash-cli-2.410.0-macos-arm64.tar.gz"
      sha256 "6336e3c0f8375d79fb98dd0513fec1467b619d581cc9ace57042912f94bc7210"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.410.0/lightdash-cli-2.410.0-macos-x64.tar.gz"
      sha256 "81ffcc5bcf8982c4aec4579f66a7fc1a7f41667e4856e94c8cfc3579fdbcfc6d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.410.0/lightdash-cli-2.410.0-linux-x64.tar.gz"
    sha256 "3d7a1e1c9a22a30625d31f8c4d5b6d3c65844acb2bf00993b99ea8d95b32ce13"

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
