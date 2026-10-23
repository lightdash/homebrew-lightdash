class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.52.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.52.0/lightdash-cli-3.52.0-macos-arm64.tar.gz"
      sha256 "39d29be58cc8f08977f45d562eeea7ff34fe39cb53fde7566b10a052b9dcff74"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.52.0/lightdash-cli-3.52.0-macos-x64.tar.gz"
      sha256 "b4e8f51efd5dd0071361ee9a78fe6942da50b9d52d72b50f6bc6bed714059d87"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.52.0/lightdash-cli-3.52.0-linux-x64.tar.gz"
    sha256 "d7c1e357090870e47595dd9bf1ec9cd58cb23ba4a44f5acc6a0237c676ba5f0d"

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
