class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.15.0/lightdash-cli-3.15.0-macos-arm64.tar.gz"
      sha256 "affa60cea6d4522a84c326946eec4b91694baf28b746dfa6fddc5f875efde770"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.15.0/lightdash-cli-3.15.0-macos-x64.tar.gz"
      sha256 "2bb2978188e755513589f3804e6b8de0f7f60ee07bde5005e53666c7ebd69aa1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.15.0/lightdash-cli-3.15.0-linux-x64.tar.gz"
    sha256 "5f1618c6d23fe4a338dc6091d72594dd5e34f6e3a3ca1a6cf097cffe94f341ad"

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
