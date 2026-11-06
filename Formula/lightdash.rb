class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.177.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.177.1/lightdash-cli-3.177.1-macos-arm64.tar.gz"
      sha256 "d9746ec2594a1085120d02a534270a41b7543de3d47057298b10baec2d3cbe71"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.177.1/lightdash-cli-3.177.1-macos-x64.tar.gz"
      sha256 "0d8205062bc3dc6092efdde150014be29fbf60ace4cd6b8bbc39bcd9cc912a5e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.177.1/lightdash-cli-3.177.1-linux-x64.tar.gz"
    sha256 "fd1446eb7bc404407ebd3c74b10d170f74f0964ca5ffa2eeb9727bf3e020d1f9"

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
