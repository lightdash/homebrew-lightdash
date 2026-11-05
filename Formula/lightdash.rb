class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.166.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.166.4/lightdash-cli-3.166.4-macos-arm64.tar.gz"
      sha256 "7c66c2c38b1bafb413beef1336ac867498f13639e8b89d3a21e039ce53b3bf39"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.166.4/lightdash-cli-3.166.4-macos-x64.tar.gz"
      sha256 "182b03d0c8bbd734e5e8b44b6e63f05e23f36ac7358b1e04bc6bd7878784c63e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.166.4/lightdash-cli-3.166.4-linux-x64.tar.gz"
    sha256 "c6748a6e780289517803074335be0406e9cd03f6c90ecaef5ff867accc1a44d6"

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
