class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.46.0/lightdash-cli-3.46.0-macos-arm64.tar.gz"
      sha256 "a40498fb283840d8a14e41a85cd163e35e951ef795ed22d3834e3de429018813"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.46.0/lightdash-cli-3.46.0-macos-x64.tar.gz"
      sha256 "cf25d2ceb2288219f29cb6a640989998e11efd0b003e51dcfe98c07074128e7d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.46.0/lightdash-cli-3.46.0-linux-x64.tar.gz"
    sha256 "520fe5b38ea9cacd309e11ac101f57f296952c5e11e369aba409846be3dd7577"

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
