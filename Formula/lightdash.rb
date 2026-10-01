class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.406.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.406.1/lightdash-cli-2.406.1-macos-arm64.tar.gz"
      sha256 "7227a0fec1e220cae3ee76950f3924b712838cdd07c1741425afb9db8a7d2d08"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.406.1/lightdash-cli-2.406.1-macos-x64.tar.gz"
      sha256 "86a63bfd31843b04794e5053e62dd69e5d9f59cde9f562eee9dc802311ca1738"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.406.1/lightdash-cli-2.406.1-linux-x64.tar.gz"
    sha256 "81acf71f2939778cd0e8f6889911f91211b4ff75479f2652b279fb4ac3e9f5e3"

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
