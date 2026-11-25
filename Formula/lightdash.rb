class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.395.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.4/lightdash-cli-3.395.4-macos-arm64.tar.gz"
      sha256 "73bbc0c2e3f9b685265c08ef35888c6b8d2a2e69c9ba25cb5dea0d22ded363ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.4/lightdash-cli-3.395.4-macos-x64.tar.gz"
      sha256 "d2dcfe9ff090ed03daa544e77c8e361f6e260fa871b0caf3ce8964edfac22100"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.395.4/lightdash-cli-3.395.4-linux-x64.tar.gz"
    sha256 "aceb2b69acdcdaaa209240a935b57627aa1f8f239b7a3987b689a7a7a48da636"

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
