class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.461.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.461.0/lightdash-cli-2.461.0-macos-arm64.tar.gz"
      sha256 "e561df79f60c98b501d4dfef08fde67b42ddfe4039f5140ac1827e1e39bf4287"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.461.0/lightdash-cli-2.461.0-macos-x64.tar.gz"
      sha256 "84b761c1de0c499d6a5cba68329ec67e993cacea9e6c63a956709f2b1ab4e7c0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.461.0/lightdash-cli-2.461.0-linux-x64.tar.gz"
    sha256 "aade3475f32e6931341b2df3823d5dd1bc0dd8f71d975a6c14e3d569b51b156e"

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
