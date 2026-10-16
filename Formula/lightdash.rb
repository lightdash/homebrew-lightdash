class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.597.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.597.1/lightdash-cli-2.597.1-macos-arm64.tar.gz"
      sha256 "c1549a327782fa05168f0e714db7cf58a5819b247828a7bbce415999dc7ec847"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.597.1/lightdash-cli-2.597.1-macos-x64.tar.gz"
      sha256 "9a0027a9910181dd693b7d7d539c134b98d078732c4f19b1e50fd0f6914815a6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.597.1/lightdash-cli-2.597.1-linux-x64.tar.gz"
    sha256 "2aecaf56b0ebd35370a7702191c78d195619131d6dfd649ba37408dd4574ab6f"

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
