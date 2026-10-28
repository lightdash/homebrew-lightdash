class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.76.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.76.3/lightdash-cli-3.76.3-macos-arm64.tar.gz"
      sha256 "9e93b685f15f57aeb1d069a226f4010d417381e90a9c84fe4c5b2e4321d837db"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.76.3/lightdash-cli-3.76.3-macos-x64.tar.gz"
      sha256 "cd6fff71add24ed4b737c07dce4cf1c39034dbbe953bdf82c50e32fd608a11ea"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.76.3/lightdash-cli-3.76.3-linux-x64.tar.gz"
    sha256 "97b4e0e0fb34c862ec515783466eeb439be40fe732ea12d545f55e9e95b24e82"

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
