class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.231.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.231.0/lightdash-cli-3.231.0-macos-arm64.tar.gz"
      sha256 "67335035d2ede0694bcaab45bfb903836283edec25ac0cdc11b14726cd039fe4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.231.0/lightdash-cli-3.231.0-macos-x64.tar.gz"
      sha256 "87128e0255b36710e90ce28da41109b3e54f07552df5f649845ba6e004890d68"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.231.0/lightdash-cli-3.231.0-linux-x64.tar.gz"
    sha256 "44ee6d4493838b4c8a31f39f6d63b8543a2765ca83075857bedb2cdcc0a140ca"

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
