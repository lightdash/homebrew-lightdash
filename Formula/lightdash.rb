class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.23.1/lightdash-cli-3.23.1-macos-arm64.tar.gz"
      sha256 "e8ca0b1064c53990e598463297a8719d30fd8199c76c87f67b80141248064c72"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.23.1/lightdash-cli-3.23.1-macos-x64.tar.gz"
      sha256 "ba0bec64c4e3e9f98db7d8f56f00a0d4eaa20b1fc8f9a3045964158addba3a40"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.23.1/lightdash-cli-3.23.1-linux-x64.tar.gz"
    sha256 "404aa1cb31088a636a143cd742450da7187a650cb0383ffee322aa50fb652da8"

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
