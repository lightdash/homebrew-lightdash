class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.472.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.472.0/lightdash-cli-2.472.0-macos-arm64.tar.gz"
      sha256 "7112bff5dcae83896cbf7601065dc4175c2c4550d9d3897ab864109cfec2a51d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.472.0/lightdash-cli-2.472.0-macos-x64.tar.gz"
      sha256 "134e9885be1ca72cd5ed69fae042fc7ae0a6a7ca34bba6a09b5b9cf22945def2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.472.0/lightdash-cli-2.472.0-linux-x64.tar.gz"
    sha256 "7de2510dda78b618e8573489fe5521aa7b46616ebd66ef5d4184d6109fd1993f"

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
