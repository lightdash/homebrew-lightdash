class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.292.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.292.2/lightdash-cli-2.292.2-macos-arm64.tar.gz"
      sha256 "8e159b1e7f35ac44213a042abcca3a6287867a61a60e0d1e28a27ebbfbb2f1a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.292.2/lightdash-cli-2.292.2-macos-x64.tar.gz"
      sha256 "8edbaa93cfadfffefba7148d88d342062b6686b2d3b556f015210a9f35b9c0f4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.292.2/lightdash-cli-2.292.2-linux-x64.tar.gz"
    sha256 "959be22ee229386f62985703b41cfda435b0b2c67bdc25b4c96e2d62690ae468"

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
