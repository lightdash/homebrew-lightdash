class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.573.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.573.1/lightdash-cli-2.573.1-macos-arm64.tar.gz"
      sha256 "267c0a80ab2e761aebe601d0f55446e9c57e6fd67a61f442eb5663fd6f597f36"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.573.1/lightdash-cli-2.573.1-macos-x64.tar.gz"
      sha256 "0a6d3b319bae506c87061145b9b819f399198f616c1af44c8663e184a99764b6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.573.1/lightdash-cli-2.573.1-linux-x64.tar.gz"
    sha256 "50ccfb03595bac05194cf0cc41e223546f2cb06170f6ed80ec4a9d5f688ca533"

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
