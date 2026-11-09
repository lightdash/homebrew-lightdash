class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.182.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.182.0/lightdash-cli-3.182.0-macos-arm64.tar.gz"
      sha256 "976f7ce8e72f240e7a91aa759d968a91ad698f9044f599732c9ab12662fde9da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.182.0/lightdash-cli-3.182.0-macos-x64.tar.gz"
      sha256 "ff00d3f9d5991e677f6008d44286e79688c948be71ccdf9d94a8095c8e3c1bba"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.182.0/lightdash-cli-3.182.0-linux-x64.tar.gz"
    sha256 "bbd71f4d942be719f881e56ed8dc9585c999bc82074d37924cb0dcfe31301148"

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
