class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.41.0/lightdash-cli-3.41.0-macos-arm64.tar.gz"
      sha256 "7b44373986f2135793d6c3caac9e9ed1f06e51c8aa3654da28cf01d7d29f0d06"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.41.0/lightdash-cli-3.41.0-macos-x64.tar.gz"
      sha256 "94538b2ea23ca0d99ab17572d197e4fb5acb4847ead4c552ed0a8003245db190"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.41.0/lightdash-cli-3.41.0-linux-x64.tar.gz"
    sha256 "aae3371019bb060ccdb44f49acf9d31b47abd64173f833124e6154cf577eb399"

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
