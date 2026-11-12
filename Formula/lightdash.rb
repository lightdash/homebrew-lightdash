class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.239.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.239.0/lightdash-cli-3.239.0-macos-arm64.tar.gz"
      sha256 "9d71e93c9389f2ee580251aada4692b110243cce9a3ecfc406662fbda1e25c3e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.239.0/lightdash-cli-3.239.0-macos-x64.tar.gz"
      sha256 "eeb10c2acf9eb902cc96ff1e0eb02a1d7b6fc054bdd35ebffa7ef578e038f0cd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.239.0/lightdash-cli-3.239.0-linux-x64.tar.gz"
    sha256 "608d89d7d8e80d379c429f0b25ca679e8c167ab9033bbb91fd2e08eb40abd7b1"

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
