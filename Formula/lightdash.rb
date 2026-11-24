class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.381.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.381.2/lightdash-cli-3.381.2-macos-arm64.tar.gz"
      sha256 "ebaf69b5315d66530c3e472f15e5237e669156899a8c6fc69b319928bb363e42"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.381.2/lightdash-cli-3.381.2-macos-x64.tar.gz"
      sha256 "8aa0ec12032a8f0aa5a60c29ff26c3048cfd11765e7b352ac9e2e746ec7bbeae"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.381.2/lightdash-cli-3.381.2-linux-x64.tar.gz"
    sha256 "dafb0f6a81ef6a76e8d6c60959d7967c42effecfd3ee1266cd11d941c77da64b"

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
