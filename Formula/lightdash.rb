class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.199.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.199.0/lightdash-cli-3.199.0-macos-arm64.tar.gz"
      sha256 "a9862f52839631ac1abbcd5e68318cf49bb8993cad2607a2f872becef886762b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.199.0/lightdash-cli-3.199.0-macos-x64.tar.gz"
      sha256 "fa961fc4b1948aca86dfc1de2c9c31d8040ea9a2af98e3350e54f5ef276a6d76"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.199.0/lightdash-cli-3.199.0-linux-x64.tar.gz"
    sha256 "983c97423980de5b8720e67274a5c4b7734442c420f4319449379aa54e0bf56d"

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
