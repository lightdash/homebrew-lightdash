class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.361.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.361.2/lightdash-cli-2.361.2-macos-arm64.tar.gz"
      sha256 "ae3201dd61c334fc24f060d15ab7dc8a87c274da965861d840fa76d1be3df68a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.361.2/lightdash-cli-2.361.2-macos-x64.tar.gz"
      sha256 "5db4a2dfcb0c3a0e8114f89e7425cf4ea4153b0a720c5b97111254dbd858d3b6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.361.2/lightdash-cli-2.361.2-linux-x64.tar.gz"
    sha256 "e1bc26f46419f86e8a1d23ad54beb836fb94071971e4bd5e9247feef841da099"

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
