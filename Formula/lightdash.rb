class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.520.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.520.0/lightdash-cli-2.520.0-macos-arm64.tar.gz"
      sha256 "48944f33520e0f745beba1b2123362d9669417ec7b727c965519776b1811295a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.520.0/lightdash-cli-2.520.0-macos-x64.tar.gz"
      sha256 "53e71f89e63a6335a41ddb2f0c24be997586e41134c2b62282135353c8f798ca"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.520.0/lightdash-cli-2.520.0-linux-x64.tar.gz"
    sha256 "822377f0d94d5f66bc7c6df8f2fa7f25a2ce3cfccef19d51c09ed5094c4a458e"

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
