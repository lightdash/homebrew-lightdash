class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.368.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.368.0/lightdash-cli-2.368.0-macos-arm64.tar.gz"
      sha256 "80630914e162b35a7c1e0022e7bd702fd3eb5e1b7753fdc660308fec5eef1b56"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.368.0/lightdash-cli-2.368.0-macos-x64.tar.gz"
      sha256 "d82c3fb07a4bd2cea7c27a4de22f66703db362e06c98c5033425ebdd8816fd0b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.368.0/lightdash-cli-2.368.0-linux-x64.tar.gz"
    sha256 "5e2348fc3ff884ba8c22ca92898c9aa795edf04b9a51c1181e70cc00ce12ab9a"

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
