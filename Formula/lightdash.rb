class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.410.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.410.0/lightdash-cli-3.410.0-macos-arm64.tar.gz"
      sha256 "b87816984a7f7d0dd8be0fd870ba7cd0fa9e2492db0aa11879faf96a91e18652"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.410.0/lightdash-cli-3.410.0-macos-x64.tar.gz"
      sha256 "75c4aa5b8692bde4984360c40bbe1a763c09d4042450e973e50cea76f9c45eaf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.410.0/lightdash-cli-3.410.0-linux-x64.tar.gz"
    sha256 "d27601575d1cf4e1c64c0aa21ccac3744c3213f0b91223c205123792aad69f50"

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
