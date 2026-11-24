class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.392.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.392.0/lightdash-cli-3.392.0-macos-arm64.tar.gz"
      sha256 "948b92b180f627beec465acf07750d435f8db56d339e2d3b46a620989772f37f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.392.0/lightdash-cli-3.392.0-macos-x64.tar.gz"
      sha256 "528dc6c6dc081898390fc3ece02bf96f67becbb99a01e28152f56ffa0a692a91"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.392.0/lightdash-cli-3.392.0-linux-x64.tar.gz"
    sha256 "0fae206c3c4d2abbbeaf6a1718c108f7948fe55d06812523cc92a2f955063256"

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
