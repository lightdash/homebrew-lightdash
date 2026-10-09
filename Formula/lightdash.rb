class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.503.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.503.0/lightdash-cli-2.503.0-macos-arm64.tar.gz"
      sha256 "9d9776b000c0caaa81f5a1634bb13315c4540962e9f598e4a48bb0a466fd34c2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.503.0/lightdash-cli-2.503.0-macos-x64.tar.gz"
      sha256 "1bd9f93a85bb48f184f3542c4bba19cdc98e6a726ef8037176ebeea7d0173c63"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.503.0/lightdash-cli-2.503.0-linux-x64.tar.gz"
    sha256 "ce2f132476bc09b5b18ea1069807a750ea75bcea2c5bce5ce20799d54fd3e6a2"

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
