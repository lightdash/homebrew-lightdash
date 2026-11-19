class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.328.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.328.0/lightdash-cli-3.328.0-macos-arm64.tar.gz"
      sha256 "02495f5f5dc9c102b716a7c5da465901a0465f53b29ba6fb91e09c0242f953ff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.328.0/lightdash-cli-3.328.0-macos-x64.tar.gz"
      sha256 "269330f0bf9b59b91a0d348047c5a9bab1cb4ebe634ba66a216894d769a3d2f7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.328.0/lightdash-cli-3.328.0-linux-x64.tar.gz"
    sha256 "c6a0a2182bb9f244399ec63e9e7f82b30df5d05a93165db392c088ca5a4eff85"

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
