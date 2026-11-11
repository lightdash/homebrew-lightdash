class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.211.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.211.1/lightdash-cli-3.211.1-macos-arm64.tar.gz"
      sha256 "e43097bc13332ee1ff62425d38f560604510ae28cba05d76be3fe866c80022d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.211.1/lightdash-cli-3.211.1-macos-x64.tar.gz"
      sha256 "f601c36eee6bd3032ce90564f8996bce166d392d00a8709c113072a76347064e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.211.1/lightdash-cli-3.211.1-linux-x64.tar.gz"
    sha256 "ca09faf1bae7c68cbf45db65b1f109b7fed896a9d6392b7a67d71acb8aa1fd42"

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
