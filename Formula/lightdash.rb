class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.68.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.3/lightdash-cli-3.68.3-macos-arm64.tar.gz"
      sha256 "8e89bed325308fb0ca674e6425f58b052aca4d4963af9a06aad0c4d5bca75d4d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.3/lightdash-cli-3.68.3-macos-x64.tar.gz"
      sha256 "e7181012054a20c4282ae5544d12908262714b2bfc7c542da5f39fb32b34ba39"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.68.3/lightdash-cli-3.68.3-linux-x64.tar.gz"
    sha256 "949f4c59088e0cadc32cb8fe9ab9001ae322d0f5c60bef8766b3cff2256e7206"

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
