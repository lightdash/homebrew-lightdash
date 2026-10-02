class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.421.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.421.0/lightdash-cli-2.421.0-macos-arm64.tar.gz"
      sha256 "787df3e94daa2f3d2f95fdf96252921b73f9deb3638b49de6316f6ead9295cd8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.421.0/lightdash-cli-2.421.0-macos-x64.tar.gz"
      sha256 "eabd554b74460ea303e5fd55ecb403bb327be405dd425c8d5ea4127154acc03b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.421.0/lightdash-cli-2.421.0-linux-x64.tar.gz"
    sha256 "c535103d4621df4973d207533e5d1405d4ef6efabee3363ee1417a3857482206"

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
