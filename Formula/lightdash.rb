class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.396.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.396.0/lightdash-cli-3.396.0-macos-arm64.tar.gz"
      sha256 "3e75ec7d7c6f0cc8e55ffb184a28f008edbef0621f5db030afa3336bfb8d9211"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.396.0/lightdash-cli-3.396.0-macos-x64.tar.gz"
      sha256 "6f6b5d7568f82aba0bea70649db88f67bdb858083bf23da8c616d64c4df67833"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.396.0/lightdash-cli-3.396.0-linux-x64.tar.gz"
    sha256 "dd695c10693221d55118dbe5d60d46c0a90a8387720b11abd675ba6ba7c78a69"

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
