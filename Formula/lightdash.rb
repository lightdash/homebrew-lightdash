class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.546.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.546.0/lightdash-cli-2.546.0-macos-arm64.tar.gz"
      sha256 "2c49b96aaf131b6d0a92b15a885f3f6b332336725b9175a034ff6854cb2bd5c3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.546.0/lightdash-cli-2.546.0-macos-x64.tar.gz"
      sha256 "6c7448b5768013e6d8f14917e2f47f63760ab7f5faf62f6a30823879be14dfb4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.546.0/lightdash-cli-2.546.0-linux-x64.tar.gz"
    sha256 "604f4419451f2d2e0cacd0c693393a5552000370ac63e364f47983d40151e041"

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
