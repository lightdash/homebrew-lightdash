class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.120.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.120.1/lightdash-cli-3.120.1-macos-arm64.tar.gz"
      sha256 "3ec67297bf2c0eaee8a7eb8f3249c7d2a87832dca9279e1564cbcbb19f0fa429"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.120.1/lightdash-cli-3.120.1-macos-x64.tar.gz"
      sha256 "04e0a680432272c32d2d5b4ff59e102a83bd05e3449e8aa30a54d36b85589edb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.120.1/lightdash-cli-3.120.1-linux-x64.tar.gz"
    sha256 "91a0a1f4a333761ea6a7213ac23a8b3a7a13793e05283c8d9f24e6b65eaff4c7"

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
