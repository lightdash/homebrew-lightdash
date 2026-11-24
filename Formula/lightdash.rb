class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.388.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.388.0/lightdash-cli-3.388.0-macos-arm64.tar.gz"
      sha256 "81375d574e9e712d0eec8d5938fc55bcffda7a06af9a80e2e08668551a2bb6d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.388.0/lightdash-cli-3.388.0-macos-x64.tar.gz"
      sha256 "9ad51552dfc79c82c7935ed1ddc6de8123379cc35f13018533bd69e9aeb588a1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.388.0/lightdash-cli-3.388.0-linux-x64.tar.gz"
    sha256 "0d502fd4f5757ec644bacfd2bca4c9503011d9bab8c89ac54d6430400c490483"

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
