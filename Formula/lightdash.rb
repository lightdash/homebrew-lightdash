class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.35.0/lightdash-cli-3.35.0-macos-arm64.tar.gz"
      sha256 "d5e8bbcbb4cf7aabbbfc8d868f722815cc2dc6a30ebd20c1031b7158d601c22a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.35.0/lightdash-cli-3.35.0-macos-x64.tar.gz"
      sha256 "6d35c3fd2ddc757bacb141da7f2f8001be081d745643a1730d7b451ba20b7147"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.35.0/lightdash-cli-3.35.0-linux-x64.tar.gz"
    sha256 "ee843801523ee43a577ee5eba736876b574b127f9d28d74e9da6aab6e64dd09f"

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
