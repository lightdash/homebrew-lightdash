class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.21.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.21.3/lightdash-cli-3.21.3-macos-arm64.tar.gz"
      sha256 "c5b7f365417ba7032bcb078eb3ddd7521e5292270c29a205fca4d2f1a82ee0c0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.21.3/lightdash-cli-3.21.3-macos-x64.tar.gz"
      sha256 "6435316d57acb0ff89f880cf2627069dd1801b9e42da98c80268eb31498fa621"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.21.3/lightdash-cli-3.21.3-linux-x64.tar.gz"
    sha256 "7ca512e136d47c31b0bd429cc41f13dfa2cf0731f4bd31f1cb78f883602aba99"

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
