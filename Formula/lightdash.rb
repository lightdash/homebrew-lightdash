class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.234.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.4/lightdash-cli-3.234.4-macos-arm64.tar.gz"
      sha256 "48ce14ffb4413b76782d1b8618c84af453708c357574a6fc5258aef97354e4c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.4/lightdash-cli-3.234.4-macos-x64.tar.gz"
      sha256 "b01ba8249b7c33dd8c504c6b704140f0cfff7e2d962d8633cdb15bc38a6e5108"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.234.4/lightdash-cli-3.234.4-linux-x64.tar.gz"
    sha256 "2ce28838cb28bbadffc3af7ed94043a4bb12372b7d6a707fdd287be2fba72d7b"

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
