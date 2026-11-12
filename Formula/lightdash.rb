class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.237.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.237.0/lightdash-cli-3.237.0-macos-arm64.tar.gz"
      sha256 "218fe1f8a69aa73919de9d2091927f75782f406735f4b7b640427e00f1c31aae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.237.0/lightdash-cli-3.237.0-macos-x64.tar.gz"
      sha256 "13e6a629e5ef1d704aac065905b012e4d17e328563ceae520cd5f2357d1bc49a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.237.0/lightdash-cli-3.237.0-linux-x64.tar.gz"
    sha256 "82ef6bac725bb7827f4a2f4371a188abfc28d2417321321882cb5163f179f265"

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
