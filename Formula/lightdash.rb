class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.411.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.1/lightdash-cli-3.411.1-macos-arm64.tar.gz"
      sha256 "7db1878da7b294d6c3fa67b5444be77f597a48ac10d695f32ea980d3ee4763eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.1/lightdash-cli-3.411.1-macos-x64.tar.gz"
      sha256 "f89cfb4096ac9d06770d57c463a9914b97d848d071f0b4ad6286048596a33c60"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.411.1/lightdash-cli-3.411.1-linux-x64.tar.gz"
    sha256 "e799d01d6c84ace6fe3fec4d7163ca45749abbf20cb9fb4488ee975d353d4b28"

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
