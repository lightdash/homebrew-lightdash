class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.354.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.354.0/lightdash-cli-3.354.0-macos-arm64.tar.gz"
      sha256 "d40dcca6aeb694d9e893270541ce0839bf9b2e55e1b7f69aeb71461ff151a0df"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.354.0/lightdash-cli-3.354.0-macos-x64.tar.gz"
      sha256 "445a588ceff11798f175c622b33b91eb64a3df6727b853732e371e3a90ab87f8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.354.0/lightdash-cli-3.354.0-linux-x64.tar.gz"
    sha256 "fa552aebd34383c23129307b6857e37e3f2969e12708d5d2231eb24fbc72f0a4"

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
