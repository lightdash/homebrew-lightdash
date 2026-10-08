class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.475.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.475.1/lightdash-cli-2.475.1-macos-arm64.tar.gz"
      sha256 "2fe30b41d526cb22ca912878510200fa4d09563f920e01b5da1816e6aa783611"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.475.1/lightdash-cli-2.475.1-macos-x64.tar.gz"
      sha256 "571b3e964099e759a8a1abbfde83e5ca405047077414383f1c3266532ab166b3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.475.1/lightdash-cli-2.475.1-linux-x64.tar.gz"
    sha256 "ff9a58d3ca9558cc1cb1017f7ecd12096bb673c885a7f7898e2aa627ee5178b6"

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
