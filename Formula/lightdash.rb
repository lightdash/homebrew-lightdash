class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.135.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.135.1/lightdash-cli-3.135.1-macos-arm64.tar.gz"
      sha256 "59f6ac7af5ecf4dbcdf44b1b02f5fb6a7e261872d0d007f45a83b48fd35c916b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.135.1/lightdash-cli-3.135.1-macos-x64.tar.gz"
      sha256 "5abd79070642ac02d85c2cbee578bbd9863f1d91550b1641c468225b371e5cc3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.135.1/lightdash-cli-3.135.1-linux-x64.tar.gz"
    sha256 "5c1969bc6cac51a1a7c2a618d86b74705fef02775e050077b75128098dc2226b"

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
