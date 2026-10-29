class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.99.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.99.0/lightdash-cli-3.99.0-macos-arm64.tar.gz"
      sha256 "9f444fd53aa717ebeda7c339e88ea3e327c5bbcf1d927b47a9b02f3ddb876e8e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.99.0/lightdash-cli-3.99.0-macos-x64.tar.gz"
      sha256 "07ea16d972cc11adba7fdd47ce7b5a51908f7e16ac14860d4603aed018736bc2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.99.0/lightdash-cli-3.99.0-linux-x64.tar.gz"
    sha256 "35860cabaee9f348a9adc0f76eea342e068eefa23880eee158628fbee985c292"

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
