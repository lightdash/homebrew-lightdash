class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.371.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.371.2/lightdash-cli-3.371.2-macos-arm64.tar.gz"
      sha256 "2003dfb618b1adcc1819901a68923dee5f69e3613a5097b7dcce0177ed5ef5df"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.371.2/lightdash-cli-3.371.2-macos-x64.tar.gz"
      sha256 "749a81d84879522a8a7bf365d862924b0ad62ae4ce515372591b4dc7380ab228"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.371.2/lightdash-cli-3.371.2-linux-x64.tar.gz"
    sha256 "4725d43a9a09ada58485d39a54132d27bc2096c4970c198b10b51aba0c4b9697"

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
