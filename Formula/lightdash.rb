class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.559.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.559.0/lightdash-cli-2.559.0-macos-arm64.tar.gz"
      sha256 "84293f28c75c12aa349c0678402cdb662f637aa7dcdfad240fe1df1415d158b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.559.0/lightdash-cli-2.559.0-macos-x64.tar.gz"
      sha256 "42a558ed75915259e9b9881f5d4b1557081c9e6d0c666e03464ad5a0a44fc7bf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.559.0/lightdash-cli-2.559.0-linux-x64.tar.gz"
    sha256 "d363145f02d7e9b6355c126c0a5f2d187cec7080c017d1e076627f3f91400feb"

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
