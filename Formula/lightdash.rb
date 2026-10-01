class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.403.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.403.0/lightdash-cli-2.403.0-macos-arm64.tar.gz"
      sha256 "d43cb8021363c9c38fe607476a1abc2babe24cc428a6c0a07d497d1994cea70d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.403.0/lightdash-cli-2.403.0-macos-x64.tar.gz"
      sha256 "630d1166e2a2b13e17c758f51fb13c0baf60bef567c7b2fabad279e1e393a9a6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.403.0/lightdash-cli-2.403.0-linux-x64.tar.gz"
    sha256 "3233b6c3482383e2ec5e8201ab9dce7487081507aac5cd85972e37d6709c1de3"

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
