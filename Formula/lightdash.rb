class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.380.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.380.0/lightdash-cli-2.380.0-macos-arm64.tar.gz"
      sha256 "a674911e08c61df783494907c1fb79322db934ee3857fabef8fe0900251d78f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.380.0/lightdash-cli-2.380.0-macos-x64.tar.gz"
      sha256 "19a49d421bdbec89bf7d1c3b1ab37a3cd88e40cfc4bf5156959fc17a78baa90a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.380.0/lightdash-cli-2.380.0-linux-x64.tar.gz"
    sha256 "667d64643c69a8fce23024f47d64d7a50f2ad2746d88a604b9fa2bcdd18fb443"

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
