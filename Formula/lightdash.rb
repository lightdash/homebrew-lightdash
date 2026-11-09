class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.190.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.190.0/lightdash-cli-3.190.0-macos-arm64.tar.gz"
      sha256 "364519f0623668f8216b816cf67a93e161865a1f73de545c3ea66c74520cbfef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.190.0/lightdash-cli-3.190.0-macos-x64.tar.gz"
      sha256 "825aee3e81cc1d176c33781cbea76ed800c8b722537c2c6b173f6a9f9148f9ba"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.190.0/lightdash-cli-3.190.0-linux-x64.tar.gz"
    sha256 "094d51102c7e12318e30c0e3439afbaba39f767ddda37f2406fcbbd1cf62a49f"

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
