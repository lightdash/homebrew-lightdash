class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.547.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.6/lightdash-cli-2.547.6-macos-arm64.tar.gz"
      sha256 "30b7f2756cbd190b41b51b0b619c137a9e091d7d80f69c84a66af4ed6243f93f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.6/lightdash-cli-2.547.6-macos-x64.tar.gz"
      sha256 "4bddf8495004cb1e974bd2db23e459a86e515195cdacbbf1096457b2db1ff6f2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.547.6/lightdash-cli-2.547.6-linux-x64.tar.gz"
    sha256 "d103870dd9e4ca43d08b880b5ef1a369c3b82d4b96b0b909be1053c67fa4b38d"

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
