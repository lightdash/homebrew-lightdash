class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.57.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.57.0/lightdash-cli-3.57.0-macos-arm64.tar.gz"
      sha256 "040af5e1ad9e043f9fda59731d5118ca4bdd6da5f9e7c56a434972e69a33a0fb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.57.0/lightdash-cli-3.57.0-macos-x64.tar.gz"
      sha256 "123aaf3c1cbca05b281041c25611901758bd25f3953fdf6d943f6051b982338e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.57.0/lightdash-cli-3.57.0-linux-x64.tar.gz"
    sha256 "84dbb69efcde8312b2f2b95c4221e51b19614f54e9bdfdd83bec206b4e3d9bff"

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
