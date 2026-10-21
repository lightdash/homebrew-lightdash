class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.3.0/lightdash-cli-3.3.0-macos-arm64.tar.gz"
      sha256 "86b566a934932016919de5e5b140e6da173ab4d19eb6e2c8519e73af0932b010"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.3.0/lightdash-cli-3.3.0-macos-x64.tar.gz"
      sha256 "2f5b635f466aeb42123b32d7c528fbbf8442882162537944fc49c61e412bd245"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.3.0/lightdash-cli-3.3.0-linux-x64.tar.gz"
    sha256 "d11f7365f24cf17d9448f291f574375776480d87d0ea2afbcfd730dde7d4c117"

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
