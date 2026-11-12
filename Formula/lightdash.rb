class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.234.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.5/lightdash-cli-3.234.5-macos-arm64.tar.gz"
      sha256 "5136ec81ad1ff7bbc5303f48eac5aad342eccaf1e2d464d5417cff86a9d3f2ac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.5/lightdash-cli-3.234.5-macos-x64.tar.gz"
      sha256 "8fdd4b8d23520f56ea8e1cd1143ab9892623ac9801faf01b1e3ce1af4098f678"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.234.5/lightdash-cli-3.234.5-linux-x64.tar.gz"
    sha256 "69b5d3e51bce85417b925b1e263bda02e314b92ad800464e585a36d1b7cec5c1"

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
