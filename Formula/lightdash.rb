class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.53.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.7/lightdash-cli-3.53.7-macos-arm64.tar.gz"
      sha256 "80af7551c480af0d69454e45403981da42d9e3f6cadd5a3d9045ca80f714639e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.7/lightdash-cli-3.53.7-macos-x64.tar.gz"
      sha256 "615a947e47243d00da584ce3924b54370f6d936d5e3a3d4893a2734084559e70"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.53.7/lightdash-cli-3.53.7-linux-x64.tar.gz"
    sha256 "2f0ac67b3465f391dea44edf4ef76a8aa8cdcabd613a5128186877e24de773f2"

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
