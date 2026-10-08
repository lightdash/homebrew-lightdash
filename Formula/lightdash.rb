class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.487.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.487.0/lightdash-cli-2.487.0-macos-arm64.tar.gz"
      sha256 "720f2cb22b03e24bffc3f1e0ff6cf8216585aa33f64d86ae9c159d16a7a84333"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.487.0/lightdash-cli-2.487.0-macos-x64.tar.gz"
      sha256 "ff5109214b66696c763f17b1464dc526bec873220f8b2ac3a7a09a4dcbccf8b8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.487.0/lightdash-cli-2.487.0-linux-x64.tar.gz"
    sha256 "40044dfc4a2b6782f38703150798e638ff8f66121751c63498fc031a79e0fdc8"

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
