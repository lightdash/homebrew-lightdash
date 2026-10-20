class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.629.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.629.0/lightdash-cli-2.629.0-macos-arm64.tar.gz"
      sha256 "78a2aa6eba47cc27570f2d316876f01d26ea0333f3c764e3e1a104ce984a8d2f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.629.0/lightdash-cli-2.629.0-macos-x64.tar.gz"
      sha256 "8002299b6685ed86e71b70e1d5016d25ae79e2c60bf71d600a764ec417a3e791"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.629.0/lightdash-cli-2.629.0-linux-x64.tar.gz"
    sha256 "0134f79b60141ad2eb98e9deb3f9f7bb701dbb6e80965d69906de9867c80b4cc"

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
