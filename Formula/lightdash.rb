class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.375.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.375.0/lightdash-cli-3.375.0-macos-arm64.tar.gz"
      sha256 "4e7e8faab823be3c226e746ad2956038d1540f73eebba3dc93c3664a6f8cd449"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.375.0/lightdash-cli-3.375.0-macos-x64.tar.gz"
      sha256 "0bba842923b674b7c30396df9111c337eb41f69d06f26337ef63f64f5ca94588"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.375.0/lightdash-cli-3.375.0-linux-x64.tar.gz"
    sha256 "8d03d5a4635931c23ec51bb03fdb5ae92b4001882a782a2ae6916a180b07e349"

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
