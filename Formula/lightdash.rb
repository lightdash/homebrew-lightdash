class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.128.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.7/lightdash-cli-3.128.7-macos-arm64.tar.gz"
      sha256 "88e015edb8bd27ef7b7b344957099142c8858c36bcdeea8a2cc8d406c4bd450a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.7/lightdash-cli-3.128.7-macos-x64.tar.gz"
      sha256 "01f7eb1273ba49009828b6f1e977d6e57085e5afc0e9ba4f6b1809bb118a7974"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.128.7/lightdash-cli-3.128.7-linux-x64.tar.gz"
    sha256 "3122dabd9f19416d19e0654fa65a4077fe948cec9183f71c438a11a57c1a8346"

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
