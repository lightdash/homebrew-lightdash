class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.405.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.8/lightdash-cli-2.405.8-macos-arm64.tar.gz"
      sha256 "9ef8981af1fd90854772cb67b7a744fae657ee23b87f56d3b819369ae1df4f65"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.8/lightdash-cli-2.405.8-macos-x64.tar.gz"
      sha256 "1924e9a3ecb3f4d58f9d7035c4ff334a1068ae9aca3950cad27e46b1b0551efc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.405.8/lightdash-cli-2.405.8-linux-x64.tar.gz"
    sha256 "cef4eabbc0651a8d6cc12aa950f310bb3dffdb7aaafb3683d061f0ad1495ef20"

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
