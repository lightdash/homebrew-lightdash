class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.345.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.345.0/lightdash-cli-3.345.0-macos-arm64.tar.gz"
      sha256 "dd6100e8858386126bde452aa9dde190dbe22936af6192268887e372172c5571"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.345.0/lightdash-cli-3.345.0-macos-x64.tar.gz"
      sha256 "d1b27a0ea5e52e9cdc161871bd70216daa972b2f5bed431c82f832f275f75aa4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.345.0/lightdash-cli-3.345.0-linux-x64.tar.gz"
    sha256 "b9a030cc61c815d1777ec1bea2d964d817afec48f02d084d7e88527d9578193a"

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
