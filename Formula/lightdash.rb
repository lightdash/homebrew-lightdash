class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.589.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.589.3/lightdash-cli-2.589.3-macos-arm64.tar.gz"
      sha256 "3b8fe0a77fc733077ec46f7535e08f324cf20942faeedbb07752db15acc196a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.589.3/lightdash-cli-2.589.3-macos-x64.tar.gz"
      sha256 "ca13713586bbc668c2303767c9f480febf2f50f2d8dcb908cfec46d3e1145a31"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.589.3/lightdash-cli-2.589.3-linux-x64.tar.gz"
    sha256 "5d35b049c0feaa5d3a1710644995f3d12a1b8e146c9ebc083513226f49a94d37"

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
