class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.378.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.378.0/lightdash-cli-2.378.0-macos-arm64.tar.gz"
      sha256 "367a77f46a38cc2fc6808a33ddd82394141ee5432c0a3fe8896545ac6348af99"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.378.0/lightdash-cli-2.378.0-macos-x64.tar.gz"
      sha256 "e5dba2644487c79af86320642941de2c0dd9105103ec5ee14e70451de933c8bf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.378.0/lightdash-cli-2.378.0-linux-x64.tar.gz"
    sha256 "4a61ea2212b71191ff523f23b9c8bbc046531cd1b7bf88c9e90a11bcc8a9bf21"

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
