class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.59.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.59.2/lightdash-cli-3.59.2-macos-arm64.tar.gz"
      sha256 "b3f3f62a2ab73e572f9bc0bd05b0c0fde85f81f18889dc9faabde6b129822ac9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.59.2/lightdash-cli-3.59.2-macos-x64.tar.gz"
      sha256 "ef2dc17663fa8459810c377662c4b424dd55b42aee9aadd8b19afcc9a5a1f2e9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.59.2/lightdash-cli-3.59.2-linux-x64.tar.gz"
    sha256 "88a7963480cafee45cc6d46be7f5567b02a594fe52b81b91a4890d2305ab5671"

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
