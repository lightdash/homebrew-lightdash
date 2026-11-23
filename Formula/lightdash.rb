class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.367.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.367.0/lightdash-cli-3.367.0-macos-arm64.tar.gz"
      sha256 "4ec62f97dd72c2a352194c526d90a3caa966a5ab416a819b5ac6c1462f442f47"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.367.0/lightdash-cli-3.367.0-macos-x64.tar.gz"
      sha256 "b923c3358b5d5bf32a71d1b6c4cdccba480831b080d03ae8580157421da40542"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.367.0/lightdash-cli-3.367.0-linux-x64.tar.gz"
    sha256 "823645cc5907c57dfa8612c5be5243d6e352494c61756ed9def46e5e1710fd65"

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
