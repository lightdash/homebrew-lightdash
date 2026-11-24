class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.379.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.379.1/lightdash-cli-3.379.1-macos-arm64.tar.gz"
      sha256 "cd5a4e95fd407eeec6d40197695d9c8cfc0c3ac78ac118cf0b9ff98c13f557fb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.379.1/lightdash-cli-3.379.1-macos-x64.tar.gz"
      sha256 "d6bc3c010a39cbe7ca0af6dbd322487a224f96c06212e8c35aa7ed826bd70d98"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.379.1/lightdash-cli-3.379.1-linux-x64.tar.gz"
    sha256 "191a88088125268d208cfcc37c3c19b8a925031a8773b5105cf37ecdee86f2df"

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
