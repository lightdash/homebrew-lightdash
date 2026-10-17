class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.602.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.602.0/lightdash-cli-2.602.0-macos-arm64.tar.gz"
      sha256 "72c708351a750c27c1c385d62837f807e61c2e08e09cbd4da470672d9236180a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.602.0/lightdash-cli-2.602.0-macos-x64.tar.gz"
      sha256 "65088c68edbd82fc674093f38bbe4d767048fff4f5b89638f86ff0f9999840c3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.602.0/lightdash-cli-2.602.0-linux-x64.tar.gz"
    sha256 "fd65ee9f1ff5b5542180ff29c0276abe972c093c5c13659f3f47b904f2439982"

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
