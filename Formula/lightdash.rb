class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.427.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.427.4/lightdash-cli-2.427.4-macos-arm64.tar.gz"
      sha256 "b212d30931d78cc04d9ffe82100a56484c1355c4799efdab16efdaf972c1a99f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.427.4/lightdash-cli-2.427.4-macos-x64.tar.gz"
      sha256 "4da276dc8ad64f6887c490c0cd4d3c38b016066b2897bdc7596aa7532e809545"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.427.4/lightdash-cli-2.427.4-linux-x64.tar.gz"
    sha256 "f32f83d1e9356ffaeb5eb78db80f6a19964d93d60fbb861e84a305398b2e4855"

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
