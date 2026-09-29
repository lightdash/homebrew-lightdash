class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.362.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.362.2/lightdash-cli-2.362.2-macos-arm64.tar.gz"
      sha256 "071d5f8cd16206bf75a621656682a24f3be8ca51b82a3c6537112215945c31d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.362.2/lightdash-cli-2.362.2-macos-x64.tar.gz"
      sha256 "c7c75d35570ebf92eb7380b1b93782a04554c8350d08e593d571d7b9ca218ef9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.362.2/lightdash-cli-2.362.2-linux-x64.tar.gz"
    sha256 "28f14ea6d6bdeb237a40f7f7be1cbf0ada4ea5e9143a53e13027d649c89228a9"

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
