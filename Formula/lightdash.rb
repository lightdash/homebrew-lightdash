class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.415.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.2/lightdash-cli-2.415.2-macos-arm64.tar.gz"
      sha256 "b4c1b5ab53c4954e4d46abc607d4afa4fff2d09cd56f040e28bfe78cf18cb7d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.2/lightdash-cli-2.415.2-macos-x64.tar.gz"
      sha256 "dd8f054b7ae4ee842275a5eacd3e9b319b10cf4ad7e43c664ae095e5ce0c2e7d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.415.2/lightdash-cli-2.415.2-linux-x64.tar.gz"
    sha256 "28e4e86d09e1760329fa39075f2f87bf99b11f03e7fba16c8f150c02c97bd1b2"

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
