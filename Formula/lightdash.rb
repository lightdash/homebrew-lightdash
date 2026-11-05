class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.159.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.159.2/lightdash-cli-3.159.2-macos-arm64.tar.gz"
      sha256 "c7d56fc8100d005358386c32ec4703fd1543a65e6d3ab70eb1af897dedacc1c0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.159.2/lightdash-cli-3.159.2-macos-x64.tar.gz"
      sha256 "54bf4a1531a81ceda8ae54f9e181e5bb1944fbd49a2124dc0befa8f581af4ebb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.159.2/lightdash-cli-3.159.2-linux-x64.tar.gz"
    sha256 "5ef20ef8bc214cca87d40278f751f5f828e10827ec5af126448dd8a78f7c00fe"

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
