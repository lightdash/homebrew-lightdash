class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.441.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.441.0/lightdash-cli-2.441.0-macos-arm64.tar.gz"
      sha256 "f7951fe74e4f5c8a4912dceb34eb96e5676e4546893fe0009da14f4385c2318c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.441.0/lightdash-cli-2.441.0-macos-x64.tar.gz"
      sha256 "18f70728bb0a21bf17d87bc4bea55aeedd2a96dcc73238abde1fe93bdf272fe0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.441.0/lightdash-cli-2.441.0-linux-x64.tar.gz"
    sha256 "f68c9c1aa02b75bf287e2cd657cad8f3e115462b6dd6137c32f641626801f8ca"

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
