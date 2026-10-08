class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.478.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.478.0/lightdash-cli-2.478.0-macos-arm64.tar.gz"
      sha256 "49b8dfe4aa0365fbc1ca9a643dfdff81fbd86e0275ef0fc7d041253d4d3f5328"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.478.0/lightdash-cli-2.478.0-macos-x64.tar.gz"
      sha256 "c04608d6a7c5ce74343a2a7d281bc908fa7da9ca4309cb55eeb548f3f444894c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.478.0/lightdash-cli-2.478.0-linux-x64.tar.gz"
    sha256 "5d63af8506a806b5e11708bfefd17f366dd0b034952f0516ba239c3d3420cc44"

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
