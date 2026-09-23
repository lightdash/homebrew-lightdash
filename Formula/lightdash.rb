class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.312.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.312.1/lightdash-cli-2.312.1-macos-arm64.tar.gz"
      sha256 "0c5770dfc52782da9724a16f5c8388b05427b73ba11a4c8db36b45415a2430b0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.312.1/lightdash-cli-2.312.1-macos-x64.tar.gz"
      sha256 "55fee3f95f809d52091f1c13382105700df8024c387393dbf28afa01509067f9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.312.1/lightdash-cli-2.312.1-linux-x64.tar.gz"
    sha256 "d56c6799c53cd65f7726de75426011518f084cb5d99f91a7cac8a87e9c70a267"

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
