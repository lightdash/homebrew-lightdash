class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.179.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.179.3/lightdash-cli-3.179.3-macos-arm64.tar.gz"
      sha256 "7bca8f00c864272eff6b6d0eee0e3dab4efb660604ca40e9f4730213cfbce387"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.179.3/lightdash-cli-3.179.3-macos-x64.tar.gz"
      sha256 "febecefd789baa6a3ba887e297267c2feec21989485aa3a6f878b55b82c9dd75"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.179.3/lightdash-cli-3.179.3-linux-x64.tar.gz"
    sha256 "73a0b8581b779bd217b187c66e1bd1b806db8351f139e26bd1ac5aa57ebf2816"

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
