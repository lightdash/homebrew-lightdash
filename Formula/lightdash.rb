class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.605.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.605.1/lightdash-cli-2.605.1-macos-arm64.tar.gz"
      sha256 "73d316b091f87184b7832adc3dfe3c2a55d1f15e145afba2aa099608013f52b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.605.1/lightdash-cli-2.605.1-macos-x64.tar.gz"
      sha256 "97555edf3245176830eb1e5ed653b52141f67511c538e37b772360b71243097f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.605.1/lightdash-cli-2.605.1-linux-x64.tar.gz"
    sha256 "d6ac73a6bdf8aeaaec1b94a8b89343e35cff6adf79608fa27348df016ff3c944"

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
