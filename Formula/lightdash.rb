class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.424.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.424.0/lightdash-cli-3.424.0-macos-arm64.tar.gz"
      sha256 "3159861127e3b63455a48895f463f04e2885b928b0b5982e2a151534db634a55"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.424.0/lightdash-cli-3.424.0-macos-x64.tar.gz"
      sha256 "16e02ff7c4f6b499eb9bf83a9417df6e592426f298c1c68b060c6979a94b218f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.424.0/lightdash-cli-3.424.0-linux-x64.tar.gz"
    sha256 "fd9b562c0305d4c64ebce86c23fdcdb48f13ead016fff545bb57a2cae3820c3b"

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
