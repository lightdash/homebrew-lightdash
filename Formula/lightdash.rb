class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.492.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.492.0/lightdash-cli-2.492.0-macos-arm64.tar.gz"
      sha256 "5838dce93adfb7ae298e9b028b9d6fd385abfb6dfbc93ded4ee5aa53c2fa4533"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.492.0/lightdash-cli-2.492.0-macos-x64.tar.gz"
      sha256 "dc55f05a52a57e98ca9d0f602ab981e05502e02f71c5d9d5dfb30d27b19fb650"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.492.0/lightdash-cli-2.492.0-linux-x64.tar.gz"
    sha256 "dcba15606965888f368bcbcc75d150a4e5bb845351432a52f6b334f78d1d7514"

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
