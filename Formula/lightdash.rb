class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.121.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.121.0/lightdash-cli-3.121.0-macos-arm64.tar.gz"
      sha256 "c338fa5784d5f633b0bc423dfb7afff63c231f9e2385f52f062dc3a0f09ccb34"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.121.0/lightdash-cli-3.121.0-macos-x64.tar.gz"
      sha256 "5f54f941a53f8ea3bb7a1df40b779382e6f583fed8965d5b8bea433cf86d2497"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.121.0/lightdash-cli-3.121.0-linux-x64.tar.gz"
    sha256 "5db284ea84702fb5e3a4990d0903972f2ef19f45fea0e4d759eae739b6db6d67"

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
