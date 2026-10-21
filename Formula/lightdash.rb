class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.18.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.18.2/lightdash-cli-3.18.2-macos-arm64.tar.gz"
      sha256 "c8c9a06ccc64b8c34084962930f019fee8509a542fab14820ba9efc1814dbd6e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.18.2/lightdash-cli-3.18.2-macos-x64.tar.gz"
      sha256 "c74efda456741f4af4a8c574d337eef0db8b7f8bad7c3d14deaac74a6ec9a02c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.18.2/lightdash-cli-3.18.2-linux-x64.tar.gz"
    sha256 "5e07311b4ea9442ddfc7f7aa9cc0b8bfa3f1c27718d1307ac3c4aa2444304d36"

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
