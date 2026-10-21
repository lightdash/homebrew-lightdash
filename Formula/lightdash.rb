class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.11.0/lightdash-cli-3.11.0-macos-arm64.tar.gz"
      sha256 "05a72e62555ffa341a1f848d66d36073310a9f2535affdbed38941152fe99b05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.11.0/lightdash-cli-3.11.0-macos-x64.tar.gz"
      sha256 "8986a7276d13066ffb68aa0793535b76205d05257f0802ba7712dbd9c52d90bc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.11.0/lightdash-cli-3.11.0-linux-x64.tar.gz"
    sha256 "5652d146d04c08a5f642dbf9fa99d81f27889f196b0a772506e4bea18d44baeb"

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
