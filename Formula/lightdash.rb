class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.114.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.114.2/lightdash-cli-3.114.2-macos-arm64.tar.gz"
      sha256 "6f5024fe728f9914624051eaaa6700c7197a97cbdd150959d2a4457a656549cb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.114.2/lightdash-cli-3.114.2-macos-x64.tar.gz"
      sha256 "91170882840e4cb925b7c6477ee9fe9e4392dd2c0a3023d244c2413c7d37d89e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.114.2/lightdash-cli-3.114.2-linux-x64.tar.gz"
    sha256 "c26ac4ec0520547a1d4771d3113da55b5971e0b75bde19832d77119e3a696922"

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
