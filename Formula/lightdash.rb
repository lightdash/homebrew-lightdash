class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.230.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.230.0/lightdash-cli-3.230.0-macos-arm64.tar.gz"
      sha256 "b72055ed62d0ebf0b96fe01884bc0d87bf91256f232f28b789743c4cd4aea130"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.230.0/lightdash-cli-3.230.0-macos-x64.tar.gz"
      sha256 "1d326fef58a6ed5970fec63521bdc932e9e061bfcf025d67c2356cead9cfb22b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.230.0/lightdash-cli-3.230.0-linux-x64.tar.gz"
    sha256 "52346ec1c84cc2fa91be25e08f4ac462783b9e04c6fef1ded67b377ee7aff96c"

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
