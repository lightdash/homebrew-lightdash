class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.397.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.397.0/lightdash-cli-2.397.0-macos-arm64.tar.gz"
      sha256 "0c528b51aa9943e67a122fe401c2f8a33d2d7aeb6e849dcde1f30cfedd7a10de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.397.0/lightdash-cli-2.397.0-macos-x64.tar.gz"
      sha256 "e0a5eadf36593f56edd8be06293847d0b7d1547a1c9f26e04fea5d4e61317bd4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.397.0/lightdash-cli-2.397.0-linux-x64.tar.gz"
    sha256 "a9935c7d1ac35071deaf539ac6bfc55e33a7cf337a82ef08a808eb560d78d496"

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
