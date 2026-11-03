class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.128.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.1/lightdash-cli-3.128.1-macos-arm64.tar.gz"
      sha256 "596b2fb73cd6d0cda37eb666222f3d36cfe2b34dd59533523553287f357862fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.128.1/lightdash-cli-3.128.1-macos-x64.tar.gz"
      sha256 "a2984ba170b5cbc5bab6eabb7219e281386cb43f1526b4eb48a3309462072095"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.128.1/lightdash-cli-3.128.1-linux-x64.tar.gz"
    sha256 "d53405d7961d6db98c893410a6f736238353b508c4a21f55ca98660a07da0d2e"

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
