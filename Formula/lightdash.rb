class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.477.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.477.1/lightdash-cli-2.477.1-macos-arm64.tar.gz"
      sha256 "a777b2b6f9b90199971cd09b6cb1624ee336c66e69e5012c4230d2c2e238ab08"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.477.1/lightdash-cli-2.477.1-macos-x64.tar.gz"
      sha256 "a445573c2c0767863c870ccc9f7f1aac76f83826baeb70a5d8d05d326c47bff8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.477.1/lightdash-cli-2.477.1-linux-x64.tar.gz"
    sha256 "7b470b3f36fb8f045387199a4f9f8612d446086dfb17b0c9f6491e7849e55fd6"

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
