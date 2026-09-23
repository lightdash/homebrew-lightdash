class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.305.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.0/lightdash-cli-2.305.0-macos-arm64.tar.gz"
      sha256 "b3af91b3089d6b1744f9ef5df08b00881657793ec5d0ed1015bcc15b8c181b0c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.0/lightdash-cli-2.305.0-macos-x64.tar.gz"
      sha256 "6b867ee05fa09466e7c164dcdd152d1ac52a4eaed2a8bf0a631ca532c31207f6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.305.0/lightdash-cli-2.305.0-linux-x64.tar.gz"
    sha256 "0b16ccfd1299b085940d8aed489d4f90ed525c208fdc6cd7bcaf1b5e779a8047"

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
