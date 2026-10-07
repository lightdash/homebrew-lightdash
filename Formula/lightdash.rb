class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.460.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.460.0/lightdash-cli-2.460.0-macos-arm64.tar.gz"
      sha256 "c030818c7e6a3b4abe300cc08d15544f9cf2da7decce4fe80120ea62cfc98b79"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.460.0/lightdash-cli-2.460.0-macos-x64.tar.gz"
      sha256 "d11f2812d2cc0d724376ea63c0447c0c3b85aea3678a98f45ae2e376907b0e03"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.460.0/lightdash-cli-2.460.0-linux-x64.tar.gz"
    sha256 "3ff9794ad19cd8e8eaaa2466bb82ee7944ddb43dc264f7d1d62b163566a72a1e"

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
