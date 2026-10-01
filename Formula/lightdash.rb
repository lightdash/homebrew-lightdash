class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.405.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.7/lightdash-cli-2.405.7-macos-arm64.tar.gz"
      sha256 "5f26d2e4244b9e8327a6db63c9685000a0265786d48ec2386fd301a78b11f33a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.7/lightdash-cli-2.405.7-macos-x64.tar.gz"
      sha256 "78a1996d4596a7cba5a83e2e7af2c31c40b8fbc7bc040b4e1b10e0e0d0a77d43"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.405.7/lightdash-cli-2.405.7-linux-x64.tar.gz"
    sha256 "96cae72b3215d6744a1aa57c2f217252029b85ba58bcfdf72abbe78e55df6d66"

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
