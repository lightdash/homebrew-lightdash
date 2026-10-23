class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.38.0/lightdash-cli-3.38.0-macos-arm64.tar.gz"
      sha256 "3529d3ca5e369957048c34617d9aa5d3b4db99aa58a4dada609eadbfe8aa277e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.38.0/lightdash-cli-3.38.0-macos-x64.tar.gz"
      sha256 "7e03d25889bcb5cf1b58049aaa59408eb2207c7ca9d8157a37119c4a20f028b7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.38.0/lightdash-cli-3.38.0-linux-x64.tar.gz"
    sha256 "42924de8341c79d931d52b5ef8b62f40809f7faaabaa76383683e856747b19f0"

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
