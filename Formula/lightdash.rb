class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.406.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.406.2/lightdash-cli-2.406.2-macos-arm64.tar.gz"
      sha256 "c57079cceccdc7231e3df2bae902145deae7817ad9ae2f65e04b28a4ed3b03b4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.406.2/lightdash-cli-2.406.2-macos-x64.tar.gz"
      sha256 "3ba8f5cdfc23df75b4abbfafad85ea6b63cdeb1f69671977617ffcd1bc0effaa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.406.2/lightdash-cli-2.406.2-linux-x64.tar.gz"
    sha256 "0c7c37d35a0a1a9f4ead241e34d896e0a6e191b8fdbde094d2a7bcdde4245319"

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
