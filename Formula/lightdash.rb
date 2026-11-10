class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.194.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.194.2/lightdash-cli-3.194.2-macos-arm64.tar.gz"
      sha256 "856fb80c38779b42c23ee0401ad756ad6f782b28b3ddc4cdcc2b99b48fa4813f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.194.2/lightdash-cli-3.194.2-macos-x64.tar.gz"
      sha256 "06eab204019e843f1dc9899dcb6a915c40bcd1943f2cad60bbe84a35568d99ab"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.194.2/lightdash-cli-3.194.2-linux-x64.tar.gz"
    sha256 "e9ce63c3670a1aa46ef1ca70bd3014c8cfee2ddec54ce70144d4b91172090d73"

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
