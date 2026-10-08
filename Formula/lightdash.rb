class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.479.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.479.1/lightdash-cli-2.479.1-macos-arm64.tar.gz"
      sha256 "0e72519bd16793d04aaba90144adbf4cca882550d8dd6e2cdd849192280c9e37"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.479.1/lightdash-cli-2.479.1-macos-x64.tar.gz"
      sha256 "308bf07658005c88786c51d99d8b018c567c3c6fff6267fe5aae8ea39485eeb8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.479.1/lightdash-cli-2.479.1-linux-x64.tar.gz"
    sha256 "6e222f5fc453318d7a508606c6d359a89efbe99804ebe2e8a8d5c34d325ca95c"

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
