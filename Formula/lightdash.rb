class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.433.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.433.1/lightdash-cli-2.433.1-macos-arm64.tar.gz"
      sha256 "057a60dd8cb3a2264fffad69f92e2f5509910c78f54ca7995d269302ef92d669"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.433.1/lightdash-cli-2.433.1-macos-x64.tar.gz"
      sha256 "c9cdb4f174a0ed3324c9b58b5f16a764b91e3ec188365cdcd67931ef64e886f5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.433.1/lightdash-cli-2.433.1-linux-x64.tar.gz"
    sha256 "8159f0da540c8bb2974c321a1d776022aef2746424b7fc24a1bfa789bd19a60e"

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
