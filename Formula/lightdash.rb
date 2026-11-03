class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.141.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.141.0/lightdash-cli-3.141.0-macos-arm64.tar.gz"
      sha256 "01efe7fd2728f2e21c4d2610ebe890edf3e175b3ce626bae052cd654475d1d15"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.141.0/lightdash-cli-3.141.0-macos-x64.tar.gz"
      sha256 "f78a91038341054b47e9bdf545ec8f415c44217760a1dce0a8803c18bab2adb6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.141.0/lightdash-cli-3.141.0-linux-x64.tar.gz"
    sha256 "585f7aa47d7253e1735eac3760e33f24b333985946922535b24ea522ec0821a1"

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
