class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.209.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.209.0/lightdash-cli-3.209.0-macos-arm64.tar.gz"
      sha256 "1b66899b2e7a64e16bfc1baef5bfbcdb69471d117b7b11fae69a02cfa443bd24"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.209.0/lightdash-cli-3.209.0-macos-x64.tar.gz"
      sha256 "29572c99233276350a16adacc6191a7133d7b46238323736e5df597d4598c0bd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.209.0/lightdash-cli-3.209.0-linux-x64.tar.gz"
    sha256 "237a7c2e5208d0308935866091c564c82418abdf23a96de87fd25623be89532c"

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
