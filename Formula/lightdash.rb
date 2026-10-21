class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.20.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.20.3/lightdash-cli-3.20.3-macos-arm64.tar.gz"
      sha256 "f7ad3691f7b2ba5657f23662461846de2a1c128265da2e0a627e0bc7757da1df"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.20.3/lightdash-cli-3.20.3-macos-x64.tar.gz"
      sha256 "fd4924256f7e1e0884b08cafc062c6e897a697cfe6216efe440e643b128978b2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.20.3/lightdash-cli-3.20.3-linux-x64.tar.gz"
    sha256 "0f07d970750a466540b06553f16d4abf537dc1c14d5df7d5004534a2ad91da42"

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
