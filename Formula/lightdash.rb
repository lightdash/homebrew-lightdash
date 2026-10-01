class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.402.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.402.0/lightdash-cli-2.402.0-macos-arm64.tar.gz"
      sha256 "dea62fe609fe14c61224eb2d861fd0f2268826f13ba4f6bd55fa3fc01435efed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.402.0/lightdash-cli-2.402.0-macos-x64.tar.gz"
      sha256 "0b010dc77a5cb7befb1a85c81d4e2211d17d6165b36748c2b0dfef8f70d2ddcf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.402.0/lightdash-cli-2.402.0-linux-x64.tar.gz"
    sha256 "1a3445d612d6e7510c23225d4c3f3524e9ebdd4b3b7b598ceeb920b28dfce6e8"

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
