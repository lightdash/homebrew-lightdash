class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.153.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.153.1/lightdash-cli-3.153.1-macos-arm64.tar.gz"
      sha256 "a1265ef36db23c1d2aafc790648b4ea7f44f2700876de3557457792a2e04661c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.153.1/lightdash-cli-3.153.1-macos-x64.tar.gz"
      sha256 "4cd3c5b0b9d0287edddefaa62355a39e1e7bb33d65d5ff37eb44f1dc9a2da6b3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.153.1/lightdash-cli-3.153.1-linux-x64.tar.gz"
    sha256 "956a26b664145c8d2bbc9002910d5691caf167ec038d38fe4ef43fefffa81fe2"

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
