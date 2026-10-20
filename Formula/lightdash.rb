class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.618.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.618.0/lightdash-cli-2.618.0-macos-arm64.tar.gz"
      sha256 "bceab3360a719c7380e8dafa655f7676bb635da3e12aedb0b7b477d5ba04cf12"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.618.0/lightdash-cli-2.618.0-macos-x64.tar.gz"
      sha256 "676a9ad0312d5a6ee92502c0112870fb425da755e67f4f25ea48cbdaa9bf5435"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.618.0/lightdash-cli-2.618.0-linux-x64.tar.gz"
    sha256 "c2cd7d3d9aa0e83aa32ed5682b2eb8b77d5407225b1f285114cb75f0bf12408a"

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
