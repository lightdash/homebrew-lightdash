class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.518.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.518.1/lightdash-cli-2.518.1-macos-arm64.tar.gz"
      sha256 "f921d5a751ff6089e3d310d5de4ce428fd10630c74e5e8cb8e6652f17a416202"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.518.1/lightdash-cli-2.518.1-macos-x64.tar.gz"
      sha256 "1f85f72d41e1cbb2310abf2ba20fa88195de4fe333d21546cd50ecf16007f0d1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.518.1/lightdash-cli-2.518.1-linux-x64.tar.gz"
    sha256 "c174ca6382f983c3cc1d508510ce9c21fbb1b0f974d11d2e1545330480129f60"

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
