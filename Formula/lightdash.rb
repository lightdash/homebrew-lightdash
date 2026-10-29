class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.104.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.104.0/lightdash-cli-3.104.0-macos-arm64.tar.gz"
      sha256 "875b437e4667f5e64f0d57e76ad6ae5a0ef6593d7b7805feeb21dfe2b2caeac3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.104.0/lightdash-cli-3.104.0-macos-x64.tar.gz"
      sha256 "06c85b6832c762085083d08db7aa1954f155703073d15ab888e8afd0ce538f5e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.104.0/lightdash-cli-3.104.0-linux-x64.tar.gz"
    sha256 "4f9e688c54b3d68a811d5a27bf5b9d0327511f20070bf6e122e12b2bf2cd0069"

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
