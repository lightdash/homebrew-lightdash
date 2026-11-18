class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.306.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.306.2/lightdash-cli-3.306.2-macos-arm64.tar.gz"
      sha256 "e6c147a8177f35266004005aaebafeee8f534d90f7737fd70ef27e2886f2b3d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.306.2/lightdash-cli-3.306.2-macos-x64.tar.gz"
      sha256 "e17fdd42e71a2a0c29b3bf9efe40120bb6df78df91d4d8fbf11335d287562000"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.306.2/lightdash-cli-3.306.2-linux-x64.tar.gz"
    sha256 "320a201dcd4c1143edd0dac204e8b57b223e067247518eb0752e1717bffefb3e"

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
