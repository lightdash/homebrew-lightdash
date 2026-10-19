class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.611.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.611.0/lightdash-cli-2.611.0-macos-arm64.tar.gz"
      sha256 "91416e80a06628db0f06cfb62688896a9f912c42edf2967965f98d91cc49d18c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.611.0/lightdash-cli-2.611.0-macos-x64.tar.gz"
      sha256 "45a67aff21eba06f5e6b8d4948214fda905c58147acac9ea7fcdd5a6d3874a7b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.611.0/lightdash-cli-2.611.0-linux-x64.tar.gz"
    sha256 "20e488fbffeb091b0102d83867fce6db4f4f13614653bd252c8e0a68a214dea3"

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
