class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.328.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.328.1/lightdash-cli-3.328.1-macos-arm64.tar.gz"
      sha256 "84fd2c3b59a19c2c74f199861bb76657e6f5d54a8d343bb539e14500070d5081"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.328.1/lightdash-cli-3.328.1-macos-x64.tar.gz"
      sha256 "7aac298f9efe52f56361a44c943fca61c566079b37ef1baedac9940f790397bb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.328.1/lightdash-cli-3.328.1-linux-x64.tar.gz"
    sha256 "2d31d7bd835dc4f4b446114757719c1bf64700a967b10dbd8c7d64b8138748c2"

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
