class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.412.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.412.1/lightdash-cli-2.412.1-macos-arm64.tar.gz"
      sha256 "6c80e4ac78ba1d02ee9b99b9c7d0511e12e2e897d5f2219374da8e16d70affd0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.412.1/lightdash-cli-2.412.1-macos-x64.tar.gz"
      sha256 "46cdb0fd7ad806ec9ae1f095c0fb8eaf77588fed730bae1a7fa90d99ed73f121"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.412.1/lightdash-cli-2.412.1-linux-x64.tar.gz"
    sha256 "02a190b01824d4b6ee63607ba8a2ea2f589a892fba63d396d76628cdaa7168b9"

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
