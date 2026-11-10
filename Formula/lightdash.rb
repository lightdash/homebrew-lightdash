class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.195.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.195.1/lightdash-cli-3.195.1-macos-arm64.tar.gz"
      sha256 "19c9b2867131133b6ff74ad9a3f927868f6ab750b2a6ef979e19b69e9a27c966"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.195.1/lightdash-cli-3.195.1-macos-x64.tar.gz"
      sha256 "d07f83a8b050fa5d8c63ea0c4de439568d9358919692a760a12b9edbd46addd6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.195.1/lightdash-cli-3.195.1-linux-x64.tar.gz"
    sha256 "e8966c3bd18e6d60976f911a9d6e2a0cef06cd392569d4a6d148ff3fff74c471"

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
