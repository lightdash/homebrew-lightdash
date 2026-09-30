class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.389.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.389.0/lightdash-cli-2.389.0-macos-arm64.tar.gz"
      sha256 "6a8ddee37cd7bf9121d7e3a49536df13431d3c215603a8464691dd56145355ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.389.0/lightdash-cli-2.389.0-macos-x64.tar.gz"
      sha256 "765d16e382223a6e3342110864d7ac0b35d43aa46e056841f86b3e57455c6f85"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.389.0/lightdash-cli-2.389.0-linux-x64.tar.gz"
    sha256 "827679af882f9fdeba9baec8c2c0717da76996cfad9ff83e4907eae53cb74586"

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
