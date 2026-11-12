class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.221.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.221.0/lightdash-cli-3.221.0-macos-arm64.tar.gz"
      sha256 "20a84d8f5dd0c8b5261c16028345700c0eb230638dc365243339ab3dd14f4dc1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.221.0/lightdash-cli-3.221.0-macos-x64.tar.gz"
      sha256 "306d81e30f47bb6ec513d1c7adece2b32e14509195a086b22e6c900c60dcad91"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.221.0/lightdash-cli-3.221.0-linux-x64.tar.gz"
    sha256 "50458aa764233d3154d7b3418ea625653c508c75b64bb7ace603938240708e04"

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
