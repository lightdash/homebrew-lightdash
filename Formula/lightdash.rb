class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.179.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.179.0/lightdash-cli-3.179.0-macos-arm64.tar.gz"
      sha256 "ce5d416702ce5fafa73078fb706c40b47c1b7787459495e116bf864602b73d86"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.179.0/lightdash-cli-3.179.0-macos-x64.tar.gz"
      sha256 "62eed1c532f82fc6919cefefde5f7348fa1d64249a9e65bd42d5553d585bb6b2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.179.0/lightdash-cli-3.179.0-linux-x64.tar.gz"
    sha256 "6bf60ba128cde792772428ef7b3912716e634d5dd1bf3cd19843cb06082da8de"

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
