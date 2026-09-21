class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.269.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.269.1/lightdash-cli-2.269.1-macos-arm64.tar.gz"
      sha256 "551d4187bf26233a02c760bef9c896dae8a6310d3386112d2bfcf5c1d7068092"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.269.1/lightdash-cli-2.269.1-macos-x64.tar.gz"
      sha256 "dab71fcefbbb5625c953a1df9f4067b1cd0adae8359f62abf03f93339a707bd9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.269.1/lightdash-cli-2.269.1-linux-x64.tar.gz"
      sha256 "b1891b5e46072993bdccb80bb4d055ab3b7bb225159bd74d5d43d19bbe193daa"
    end
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
