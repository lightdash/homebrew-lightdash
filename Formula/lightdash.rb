class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.24.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.24.1/lightdash-cli-3.24.1-macos-arm64.tar.gz"
      sha256 "59a60557fdf6f217f2db97e94cbc23356edbda74eedaae80719ec3728bfd1ea9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.24.1/lightdash-cli-3.24.1-macos-x64.tar.gz"
      sha256 "86e38cdbd6129ea4899a851f950cd984b2d8c455bd1fa6edb5f0d17f0b3d2ae8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.24.1/lightdash-cli-3.24.1-linux-x64.tar.gz"
    sha256 "e15dcc7130aaefb6122ad64e7b97b996ba46decccaa69bb5ac5e0e0d587a5458"

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
