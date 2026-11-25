class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.409.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.409.1/lightdash-cli-3.409.1-macos-arm64.tar.gz"
      sha256 "e32fd423a3b831343ddf46b4deee6a408aa4cad2c763b7a393fbce69d2f08703"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.409.1/lightdash-cli-3.409.1-macos-x64.tar.gz"
      sha256 "10ff87487534dfa5d51b8ec706df78eb2686feea2567f23ff10a7226edc62b82"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.409.1/lightdash-cli-3.409.1-linux-x64.tar.gz"
    sha256 "e9c2268aa81a7cd9e028710e5851ea830133f72877e3f1131b8020a47d073386"

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
