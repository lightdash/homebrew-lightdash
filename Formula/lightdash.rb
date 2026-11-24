class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.381.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.381.0/lightdash-cli-3.381.0-macos-arm64.tar.gz"
      sha256 "1c75c0fec162056980ecebbf3f3640542ccd997b03a09633532c83e86f6cda87"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.381.0/lightdash-cli-3.381.0-macos-x64.tar.gz"
      sha256 "d0a872dc3d688788fb0fe8b145cf09ab640732006d0eb0aaaa16b3bf735fad1a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.381.0/lightdash-cli-3.381.0-linux-x64.tar.gz"
    sha256 "cc2e02a62dfd2a9a4eb548c94dcf94ed07a056efd44caf4be4eb5c476bc2e3b2"

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
