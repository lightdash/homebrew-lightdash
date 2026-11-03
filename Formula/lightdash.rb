class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.130.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.130.0/lightdash-cli-3.130.0-macos-arm64.tar.gz"
      sha256 "249c55d71f171fdb2d4cf07d8bfcca1035ecf7b3876be43499a10005a461e863"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.130.0/lightdash-cli-3.130.0-macos-x64.tar.gz"
      sha256 "6cf0de1f966f976615d6aa43adcad8c365b17eb8b53e0e47c5577edc35292b2c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.130.0/lightdash-cli-3.130.0-linux-x64.tar.gz"
    sha256 "cbc01a5ca00a814881ff7af14826cc8a47740c20f09722c312174dc1b45a9799"

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
