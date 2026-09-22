class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.301.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.301.0/lightdash-cli-2.301.0-macos-arm64.tar.gz"
      sha256 "4fa820bdce5fedc655489579dcb6a64bf9064150a736ae98a7d97d1e48c71d81"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.301.0/lightdash-cli-2.301.0-macos-x64.tar.gz"
      sha256 "d678eb6bf3a90c1229bdb61c69bb2bf2d6c4385d101a9aa585670b9e8de13b3f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.301.0/lightdash-cli-2.301.0-linux-x64.tar.gz"
    sha256 "b633995154780d4df72d80aea3896b0727d2916898525fe85e108e71baf9c0d6"

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
