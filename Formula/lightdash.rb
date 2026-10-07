class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.469.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.469.0/lightdash-cli-2.469.0-macos-arm64.tar.gz"
      sha256 "d3ac598d399169e28303e6b33e1f6586ba066f9c07f055d154d792eb59b0dade"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.469.0/lightdash-cli-2.469.0-macos-x64.tar.gz"
      sha256 "3a6c1e7a3700178f7b8122bde05d15cf1cc2ddcfdc13b572a515dd8fad573a83"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.469.0/lightdash-cli-2.469.0-linux-x64.tar.gz"
    sha256 "c89515372e38f3288ae775fddf1d700f7d7f26b4c48ae1a5cc30b7e91a34ee1c"

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
