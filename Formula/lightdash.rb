class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.288.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.288.0/lightdash-cli-2.288.0-macos-arm64.tar.gz"
      sha256 "a8912be4a56d7bce0d0350b32d6b3cc3eedeeca016417bf90c9adb8fce5f71c7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.288.0/lightdash-cli-2.288.0-macos-x64.tar.gz"
      sha256 "bc80f902ca0426275c7f5a1279bfe08fb0d2c2fce93261277868d6711fb177b2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.288.0/lightdash-cli-2.288.0-linux-x64.tar.gz"
    sha256 "f0b27ed0975cc90e64116f10212d7116320701ce3c28b4bdb10f707e0acffca8"

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
