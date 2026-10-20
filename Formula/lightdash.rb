class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.619.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.619.0/lightdash-cli-2.619.0-macos-arm64.tar.gz"
      sha256 "fd42f503260b408f6059b8926e2418b5e06ec14700094d0cec3c0c56115c9e41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.619.0/lightdash-cli-2.619.0-macos-x64.tar.gz"
      sha256 "8bdc672e1b2d3664ed27cc30268547983c8e99df2c18634bcc8978e84c53fef7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.619.0/lightdash-cli-2.619.0-linux-x64.tar.gz"
    sha256 "8b599d07046d08645b5eaac1b837da098c41576628a448bee6a4b35cf36c5b83"

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
