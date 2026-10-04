class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.425.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.425.0/lightdash-cli-2.425.0-macos-arm64.tar.gz"
      sha256 "90a47df9d6ae3b9a8908dc56a2f0a1c1891b7bc6c050365cc218233b32fa1022"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.425.0/lightdash-cli-2.425.0-macos-x64.tar.gz"
      sha256 "7ed590062a167fb2eeea282b310376751abbabd78dd0a2ffd9af43d0fdb33296"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.425.0/lightdash-cli-2.425.0-linux-x64.tar.gz"
    sha256 "05699f812e52619bb37ce0aa1cb034d92d65e38821c53932a1d3b7cb4104b09a"

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
