class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.631.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.3/lightdash-cli-2.631.3-macos-arm64.tar.gz"
      sha256 "cf9f625287a74269d9d215bbd4fcd92cd2eaf460e164955c41e675171d8ffee8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.3/lightdash-cli-2.631.3-macos-x64.tar.gz"
      sha256 "088d8a48aeb1f5fc388593cdfb61f40c2e48235a9488ea323fabae20add457ca"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.631.3/lightdash-cli-2.631.3-linux-x64.tar.gz"
    sha256 "f6162d36aef9740fa0060f1af73c3beee3de9818275b497342f3e916405b83a0"

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
