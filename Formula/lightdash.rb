class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.328.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.328.0/lightdash-cli-2.328.0-macos-arm64.tar.gz"
      sha256 "7d55e4d1bf8f0cf0d3b674d0fff1fbde645ce2818d7b7fee8b142fd571cafe98"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.328.0/lightdash-cli-2.328.0-macos-x64.tar.gz"
      sha256 "a4947b699acf5f6bacd72a62581c365e1dfc0da568c6846a726fd5232cd6b667"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.328.0/lightdash-cli-2.328.0-linux-x64.tar.gz"
    sha256 "5d53b6a70cc5bad1f0f0f03bd727365cc422a6097a0f9618181818f3c2314694"

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
