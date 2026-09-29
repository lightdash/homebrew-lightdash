class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.367.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.367.0/lightdash-cli-2.367.0-macos-arm64.tar.gz"
      sha256 "26346dc269b84ffb1677f144c312a390fb94395216ef2af390722780ba1d17b8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.367.0/lightdash-cli-2.367.0-macos-x64.tar.gz"
      sha256 "df29f01a7aff85d8692a2eea3ca4d3b118a4c7c0118edbc58acf0ab8c160b89e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.367.0/lightdash-cli-2.367.0-linux-x64.tar.gz"
    sha256 "960ac1426fb1d0a022b6120e27e197f518c627127a136a0cb823412c8e2d154b"

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
