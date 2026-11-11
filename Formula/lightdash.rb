class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.217.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.217.1/lightdash-cli-3.217.1-macos-arm64.tar.gz"
      sha256 "316217e64d25e17596334476b29441d917343f846ba03206fb2eca1bcd7bb07b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.217.1/lightdash-cli-3.217.1-macos-x64.tar.gz"
      sha256 "818e706c25272f689ea9ad98b0858f4051cba760892ee997583560a529acef0e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.217.1/lightdash-cli-3.217.1-linux-x64.tar.gz"
    sha256 "190d6b0c63c0e03fb97b87f0d65c830de2479c5352a4df98e3c7cd2f16ce869a"

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
