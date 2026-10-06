class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.442.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.442.1/lightdash-cli-2.442.1-macos-arm64.tar.gz"
      sha256 "8dfb40b5b8cccf73fcee175d612a6ca4cdd9896913c435bb50b12921e67030d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.442.1/lightdash-cli-2.442.1-macos-x64.tar.gz"
      sha256 "cad6d6f99d571c97c967803e24beb47aa57df60049f0e1ec94fec4a48c03d168"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.442.1/lightdash-cli-2.442.1-linux-x64.tar.gz"
    sha256 "7e2174698431962517b0e3257a2d02037fb7fcc352d6566e8a8ac6ffa7e656da"

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
