class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.312.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.312.0/lightdash-cli-3.312.0-macos-arm64.tar.gz"
      sha256 "b95e4bc315215ba617b139799120b33058052baa58c9c5ec25fb199395987502"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.312.0/lightdash-cli-3.312.0-macos-x64.tar.gz"
      sha256 "e88d197d83daa5de3826aa9c6e535c0203dd8ff7b7f8ce93e5b8e126a6acc653"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.312.0/lightdash-cli-3.312.0-linux-x64.tar.gz"
    sha256 "f96c206e4cf35b3ac4778ae51e1d131d5f463a980ed0388dd96bcc59b8908899"

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
