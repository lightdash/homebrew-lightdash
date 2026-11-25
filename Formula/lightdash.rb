class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.395.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.5/lightdash-cli-3.395.5-macos-arm64.tar.gz"
      sha256 "9dfabf84f39b85836b8e2c768ea83e5e3af9d3874648495124c01d6d07eb6b04"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.5/lightdash-cli-3.395.5-macos-x64.tar.gz"
      sha256 "9a968638f1de740b41457fc601e3621efda397352d747a327384340a9ae327d0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.395.5/lightdash-cli-3.395.5-linux-x64.tar.gz"
    sha256 "e59f8260ee2c3c3ff6a0bdb05b1bd895bd8a9db5b6efe971e14f8cd72e9be2c3"

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
