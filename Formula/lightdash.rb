class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.62.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.62.0/lightdash-cli-3.62.0-macos-arm64.tar.gz"
      sha256 "d3b23717bc36bbdeab7fdf8b18a9d80ea63fb62910303941155ae0d24b0d8473"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.62.0/lightdash-cli-3.62.0-macos-x64.tar.gz"
      sha256 "6487a87ad930bdb395520f35050daa4b7c191d6f4d6cc807c2bb8f41c2324f64"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.62.0/lightdash-cli-3.62.0-linux-x64.tar.gz"
    sha256 "a3f8c2cc6c7abfa3674186d032a444b2ae9d33aaf44363863ab4f1a8fbd09196"

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
