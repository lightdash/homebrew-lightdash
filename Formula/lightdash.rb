class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.568.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.568.0/lightdash-cli-2.568.0-macos-arm64.tar.gz"
      sha256 "e0c82882d2f341877b3b72db932b91bbb9117c484dc2983850b3d7bd15d6b26d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.568.0/lightdash-cli-2.568.0-macos-x64.tar.gz"
      sha256 "33dca6a9d0308f3eec7d40011a776dc32665c8a07a6b959ad4bac3d99427c16e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.568.0/lightdash-cli-2.568.0-linux-x64.tar.gz"
    sha256 "921bc4e7eb605c98e608cd6012314b20989187a9677c0a9d89af012091bd6af2"

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
