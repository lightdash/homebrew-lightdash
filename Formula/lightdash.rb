class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.384.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.384.3/lightdash-cli-3.384.3-macos-arm64.tar.gz"
      sha256 "f48f47bed971ca3fbfb8fe5febdf49309377f702c12bde9e23d1eca499585c7e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.384.3/lightdash-cli-3.384.3-macos-x64.tar.gz"
      sha256 "2ea87252c318a84099b6e7b11b941f28ac2fe4f1c2278047b4e346266adeffbf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.384.3/lightdash-cli-3.384.3-linux-x64.tar.gz"
    sha256 "fd1346d73e6e5174d381badb5c090d86f14f3232a5d2c712bf0044a77beab3dc"

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
