class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.234.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.3/lightdash-cli-3.234.3-macos-arm64.tar.gz"
      sha256 "196ec3caba69cde4cda97770a08bd613623021bbfb59da54c06d188ab97a0aba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.3/lightdash-cli-3.234.3-macos-x64.tar.gz"
      sha256 "6bb0062566aeb45c2108458ee19a39df3e6d3d54b53e9374a95831491e26719d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.234.3/lightdash-cli-3.234.3-linux-x64.tar.gz"
    sha256 "58ef288bd6500e392d8aff707aeffe4b8e34facfbbbcd9cf8529f665c53a90cd"

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
