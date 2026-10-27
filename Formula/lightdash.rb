class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.68.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.1/lightdash-cli-3.68.1-macos-arm64.tar.gz"
      sha256 "f5a86631f505ec50394058b3fab8f0f28f2d30536d96bd6e5984ae2fc27f013d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.1/lightdash-cli-3.68.1-macos-x64.tar.gz"
      sha256 "527b8a8a7b8a832f5c9199f52e7de896994869a9801f8b80057d28272fa5e670"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.68.1/lightdash-cli-3.68.1-linux-x64.tar.gz"
    sha256 "6f8c372df6f5e06c9c8b4e8567196c119602756f28fb504a96f5a4ae3af9bdb9"

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
