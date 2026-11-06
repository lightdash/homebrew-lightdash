class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.176.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.176.1/lightdash-cli-3.176.1-macos-arm64.tar.gz"
      sha256 "540c12f22d03a8a1301dc5a90e043f0502d9147c820197942a2c28a56bfa6474"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.176.1/lightdash-cli-3.176.1-macos-x64.tar.gz"
      sha256 "346c332b7f2f4410ef3f9d273e5b840a9f8014cfbaee06a8179afbc46bee1563"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.176.1/lightdash-cli-3.176.1-linux-x64.tar.gz"
    sha256 "248c9abd6fc1a82fe53c75d75f7d30d013e78da5985df63939e28ae8eae236c5"

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
