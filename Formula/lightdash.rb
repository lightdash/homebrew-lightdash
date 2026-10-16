class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.589.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.589.5/lightdash-cli-2.589.5-macos-arm64.tar.gz"
      sha256 "3bf568b57aadd5b755e0b0400ff9f85e0de4c3bf51cf7e6d398d98ab97a95e4e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.589.5/lightdash-cli-2.589.5-macos-x64.tar.gz"
      sha256 "9a697fa962c1617d8fbcd9c0f1369f148b0f96b83b6bf35f4ad780c8c08e31ad"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.589.5/lightdash-cli-2.589.5-linux-x64.tar.gz"
    sha256 "4fc8e93791714c9d085795b6eba2633253488fe4aed5aaaacee7c761facf96e2"

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
