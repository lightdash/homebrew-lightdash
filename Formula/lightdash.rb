class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.628.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.628.0/lightdash-cli-2.628.0-macos-arm64.tar.gz"
      sha256 "6dfd1f7f77a1b4a7f9d7e2c9e195e94e9e9393230490d28de4dc63cc17114830"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.628.0/lightdash-cli-2.628.0-macos-x64.tar.gz"
      sha256 "d58a823189a24400666ba749cf9f2f02e9ce8b1dc0d7b32dc0856e259ae6a994"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.628.0/lightdash-cli-2.628.0-linux-x64.tar.gz"
    sha256 "16213fea8347047da54e9021943dd13b4d20cc288e6fdcdd014d79a309ae712c"

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
