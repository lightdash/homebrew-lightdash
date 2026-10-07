class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.457.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.457.0/lightdash-cli-2.457.0-macos-arm64.tar.gz"
      sha256 "56b2391766445f4e4202eb768a08d8e14b83713c0e7ff45d0b26948610287d48"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.457.0/lightdash-cli-2.457.0-macos-x64.tar.gz"
      sha256 "085d88f2154e7ecb5a2be1928f9a8410720fc2141e088914f21ff7c1c2cb2b6c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.457.0/lightdash-cli-2.457.0-linux-x64.tar.gz"
    sha256 "1c49ef96a1960d622dd104e298313743276011251f291500a77f7b4035a38a35"

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
