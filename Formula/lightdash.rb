class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.458.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.458.1/lightdash-cli-2.458.1-macos-arm64.tar.gz"
      sha256 "b512845423c70cee536bfc4589f117f5615c8bc67882535ac1428aea7437a923"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.458.1/lightdash-cli-2.458.1-macos-x64.tar.gz"
      sha256 "95e2cb15ad4c643f9ec2cd7d1c849c8203270614594dd06304bf5f6358402ffa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.458.1/lightdash-cli-2.458.1-linux-x64.tar.gz"
    sha256 "10816bb147470c1c6d407129cd95f461f969c595d805f4bff8dd106fd8492ffb"

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
