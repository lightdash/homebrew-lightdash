class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.436.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.436.0/lightdash-cli-2.436.0-macos-arm64.tar.gz"
      sha256 "b3f8669abfa2bd14123db1adb5d934a3f8ff0f4e0fe654261245a7000b02d0eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.436.0/lightdash-cli-2.436.0-macos-x64.tar.gz"
      sha256 "7971bae98b97b6e5751a8327b3e40c2fc74462bf89466eff1fec015c4a9fa663"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.436.0/lightdash-cli-2.436.0-linux-x64.tar.gz"
    sha256 "3a1f7d4d91a41118d08703a5d4062ba8a488afb50df3b53e6d8a5df733e546d4"

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
