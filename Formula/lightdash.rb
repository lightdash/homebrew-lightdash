class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.573.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.573.2/lightdash-cli-2.573.2-macos-arm64.tar.gz"
      sha256 "ceb247d2b1d643f8fec689f88d27e2d984c5c9dbe00271ffae34f8ca596bd6a3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.573.2/lightdash-cli-2.573.2-macos-x64.tar.gz"
      sha256 "dca087f35b3dcdb6fac6710b22d92d1cb0f00c2b982c6825b6d731a165815a29"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.573.2/lightdash-cli-2.573.2-linux-x64.tar.gz"
    sha256 "5362fc55cb7203fa6f2bb06738e1f0ce52d1f40e7278da8cf8af82beef0bf75a"

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
