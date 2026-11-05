class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.166.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.166.3/lightdash-cli-3.166.3-macos-arm64.tar.gz"
      sha256 "61fcadc94964abd9777f6567af7625a43246e3e28403bedb666fee22401d6174"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.166.3/lightdash-cli-3.166.3-macos-x64.tar.gz"
      sha256 "a6dd2faedbae1def52b1a8aad032e599a61594fee4fa30dce22cbcc22174cbc3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.166.3/lightdash-cli-3.166.3-linux-x64.tar.gz"
    sha256 "bdd1caf0dd094b1a2cb970a369dcf6fb840870082425b193b31d5f112ae17600"

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
