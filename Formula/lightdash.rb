class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.523.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.523.0/lightdash-cli-2.523.0-macos-arm64.tar.gz"
      sha256 "1ee6a2320dfa321005669a7f4656ea952fb6d7181cc426974e44664f250c7a55"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.523.0/lightdash-cli-2.523.0-macos-x64.tar.gz"
      sha256 "ab2fa9afafc09d37766a9fd7cd6c80ec4ffba9f36aed05c6b130a6a72e030d62"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.523.0/lightdash-cli-2.523.0-linux-x64.tar.gz"
    sha256 "5842e9aebe687e08667f3a11c6bec6177e78b99dac0f2ae5499ac65356bd404a"

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
