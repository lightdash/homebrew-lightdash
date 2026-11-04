class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.143.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.143.0/lightdash-cli-3.143.0-macos-arm64.tar.gz"
      sha256 "5cf03c24c45f914de88e8e957171e9196aca3113efd1e5ce8e59543f9f95d2b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.143.0/lightdash-cli-3.143.0-macos-x64.tar.gz"
      sha256 "2d5657799218863ccd5f221dc57db1060111fba37f19a3ea2cfc725c604c854d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.143.0/lightdash-cli-3.143.0-linux-x64.tar.gz"
    sha256 "35e5361a9c5587470aaaba968696cdc23e9e2b1f0c7affd0c0e63a6b9cace85e"

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
