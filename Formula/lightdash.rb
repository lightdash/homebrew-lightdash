class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.81.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.81.0/lightdash-cli-3.81.0-macos-arm64.tar.gz"
      sha256 "e148c83abe4a6307faaeee1809376dd049c7d5668b6310df1916db75630b19ad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.81.0/lightdash-cli-3.81.0-macos-x64.tar.gz"
      sha256 "26ea87c12c504faa977acca0cfe7ee19e6b871a26fb8d9353e41ecd1659d2891"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.81.0/lightdash-cli-3.81.0-linux-x64.tar.gz"
    sha256 "23c4401ae4f47cc5ce1ceb2969c9bf6e91dc4679be10d548538447783f4b3ed3"

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
