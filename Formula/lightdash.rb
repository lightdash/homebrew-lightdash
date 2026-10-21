class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.19.0/lightdash-cli-3.19.0-macos-arm64.tar.gz"
      sha256 "be667cb26acfede9061dea2563de0c8d9dac8551ae91da76c3249efde0ba1885"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.19.0/lightdash-cli-3.19.0-macos-x64.tar.gz"
      sha256 "c840a9a734f44869c0e022ca37406588db7ee8012b70d21b703d424e5ddbbcf1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.19.0/lightdash-cli-3.19.0-linux-x64.tar.gz"
    sha256 "376e1e8c3690891dd72d841122b7a54204ff119ee46e9099c74cb879112e5dfb"

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
