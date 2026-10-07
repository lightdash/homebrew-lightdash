class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.465.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.465.0/lightdash-cli-2.465.0-macos-arm64.tar.gz"
      sha256 "7af740e4df0bc5caaef93a7de5dd0aa49f1babeb2df39ed7d296b1ebadd0e8ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.465.0/lightdash-cli-2.465.0-macos-x64.tar.gz"
      sha256 "de973ffad089ba1b26b6751d071230144e558b242eaaa8bb965fb56292ced699"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.465.0/lightdash-cli-2.465.0-linux-x64.tar.gz"
    sha256 "2c8a20712c5df45a025fdb9deeea21c0c2a349ad908d0d5b79bf8177658d39a9"

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
