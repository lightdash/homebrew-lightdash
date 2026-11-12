class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.236.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.236.0/lightdash-cli-3.236.0-macos-arm64.tar.gz"
      sha256 "dbbfd9f68bb1aaf38ded90656e80456db90cb82242285a1ac56712fb5113cb7b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.236.0/lightdash-cli-3.236.0-macos-x64.tar.gz"
      sha256 "af0a5044a45abb59e301b223845df9b2b088e6c79a4e45bb1e37559b8eb21a1a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.236.0/lightdash-cli-3.236.0-linux-x64.tar.gz"
    sha256 "ea863380eb58bc76df68614313553325d05cefee00773e906100650cd6742cf4"

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
