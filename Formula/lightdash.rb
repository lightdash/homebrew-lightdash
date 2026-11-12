class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.240.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.240.0/lightdash-cli-3.240.0-macos-arm64.tar.gz"
      sha256 "ffa44ebbfd7c912bbff52ab761d5c20f179b303fe0abcb4065ff9a6f2c7510c9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.240.0/lightdash-cli-3.240.0-macos-x64.tar.gz"
      sha256 "8288394372637beec2b2fe7aa3a47f4a0a6221177e12bb616e38ad7dc1e62732"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.240.0/lightdash-cli-3.240.0-linux-x64.tar.gz"
    sha256 "cd1a592ae568dc7279be1dff1fc0f46bf282a30473ca3e8d6c7480819d1e05f9"

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
