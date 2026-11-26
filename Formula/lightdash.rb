class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.418.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.418.0/lightdash-cli-3.418.0-macos-arm64.tar.gz"
      sha256 "a62cb1a85a6662e0c6017ab0ef0033faf0209e0e644520a30b050dc62ee5e8a4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.418.0/lightdash-cli-3.418.0-macos-x64.tar.gz"
      sha256 "edb8537df21af17661cb30b56e7a13547b77a2a076f5198698b4ef91a6a0e922"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.418.0/lightdash-cli-3.418.0-linux-x64.tar.gz"
    sha256 "ca3ef276898abcb98c014a9af1ecfa201b91eadba2019f593290f5771c560e45"

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
