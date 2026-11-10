class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.195.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.195.0/lightdash-cli-3.195.0-macos-arm64.tar.gz"
      sha256 "1003759186711879a698097a8eb90a13841f569bcd5f00db70c5ae4855e87568"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.195.0/lightdash-cli-3.195.0-macos-x64.tar.gz"
      sha256 "1be38c2083463fc336a66fcbd986313f7875f269f555bc5eeeece080b7df27ca"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.195.0/lightdash-cli-3.195.0-linux-x64.tar.gz"
    sha256 "d2024b06bf324d9f407d84149e16b7c2b875f321bf7eecdb03148508167e7828"

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
