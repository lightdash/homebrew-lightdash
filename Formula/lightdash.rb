class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.211.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.211.4/lightdash-cli-3.211.4-macos-arm64.tar.gz"
      sha256 "efef0e3b0c5cc6d65ea31fb829aa5fcda0d550db924ed804cac5b97a8844a6ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.211.4/lightdash-cli-3.211.4-macos-x64.tar.gz"
      sha256 "afe60855d34214b63e62b1ffa3a549947f2e770e56f25d27b397c99ecfeac742"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.211.4/lightdash-cli-3.211.4-linux-x64.tar.gz"
    sha256 "bcefc70f529bb725cd5a0266093afcc5e3e243fd970376c4d1f3f5ca7e92ce1b"

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
