class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.547.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.3/lightdash-cli-2.547.3-macos-arm64.tar.gz"
      sha256 "803f121645f7e68a04e4e4d0f22e6ce9c5ef500ab611fa1873e75b1d6e73dd67"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.3/lightdash-cli-2.547.3-macos-x64.tar.gz"
      sha256 "f2f60deb85ac81df939378bfb3e078d1ba2c9f3dc988cc599b4981c2271bb9aa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.547.3/lightdash-cli-2.547.3-linux-x64.tar.gz"
    sha256 "68129fc5428789d247085e58dc4975a03b68c772e6bed777a69d276854ea557b"

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
