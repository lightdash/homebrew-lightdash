class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.186.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.186.0/lightdash-cli-3.186.0-macos-arm64.tar.gz"
      sha256 "d6f9c9ec4829f0ffe2eca3d8e8744f86dfec3c78c6caafc1c1c5ed17ff3c9d69"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.186.0/lightdash-cli-3.186.0-macos-x64.tar.gz"
      sha256 "bff7c04dda86f6cb2ecccdc0021f331de83d6188b5535f2801bdc3ad51c404e4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.186.0/lightdash-cli-3.186.0-linux-x64.tar.gz"
    sha256 "f0b9b652e64acae531bce31e74d3b6909628c0ea09689288bb39154579650703"

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
