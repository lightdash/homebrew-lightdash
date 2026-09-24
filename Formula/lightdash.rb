class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.336.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.336.0/lightdash-cli-2.336.0-macos-arm64.tar.gz"
      sha256 "952a73ea2a76714e4fb3e20895e8381cfcbc814b4e26c0da6dbb9e4235b04484"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.336.0/lightdash-cli-2.336.0-macos-x64.tar.gz"
      sha256 "682713bd4878e59f0d8bfe56dc03e7f551ab50c132050ba63316b17e925f000c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.336.0/lightdash-cli-2.336.0-linux-x64.tar.gz"
    sha256 "b806cf3fb403621cc7f29f9b0302e0e89665ac31a4a96fa640d8f0fbbf9286c3"

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
