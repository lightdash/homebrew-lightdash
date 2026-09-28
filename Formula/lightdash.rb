class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.355.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.355.0/lightdash-cli-2.355.0-macos-arm64.tar.gz"
      sha256 "60c5b45fe23640c76aadf1573b40f891864a0054effcbb6d82dbcb6b76c9ffc8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.355.0/lightdash-cli-2.355.0-macos-x64.tar.gz"
      sha256 "d77b4b2663d7d429f71b38a0bc733e8c8785f8cc06fd1d3dffc67a8fa6bf2105"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.355.0/lightdash-cli-2.355.0-linux-x64.tar.gz"
    sha256 "3249cd5fd178e4e4528c41c07a6d9f9dacb7f4b7aaf33f40b59a15980f47772b"

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
