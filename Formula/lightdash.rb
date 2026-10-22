class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.30.0/lightdash-cli-3.30.0-macos-arm64.tar.gz"
      sha256 "e56df0ccb0a4d78ecbccd369456703a635d0b64bdb87b21a73e2ee0e677922db"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.30.0/lightdash-cli-3.30.0-macos-x64.tar.gz"
      sha256 "504512d7d0b077dc00d42aaa1c3672873605027b2a536fc9cb058f552351a105"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.30.0/lightdash-cli-3.30.0-linux-x64.tar.gz"
    sha256 "c44c58eeb23596e0655ff0312cc5c054512f8582317a32f247b97f0832558f52"

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
