class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.53.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.11/lightdash-cli-3.53.11-macos-arm64.tar.gz"
      sha256 "907795b8595b270192e03729e31c3304e196327931ae3e7dd6f178f8aabc40ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.11/lightdash-cli-3.53.11-macos-x64.tar.gz"
      sha256 "47122b117970cd4609ef38744e1a48c8109fb46b3125df660da5c2a47df13e1a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.53.11/lightdash-cli-3.53.11-linux-x64.tar.gz"
    sha256 "dc5f868f3c2d518811143dfd23b3b44155a2cd676260218632fdb51344b68ec2"

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
