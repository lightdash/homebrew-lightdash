class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.357.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.357.0/lightdash-cli-3.357.0-macos-arm64.tar.gz"
      sha256 "123bb0c52025ae48d8164df868bdf8636044007789526cf3a99001ac253b7fbe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.357.0/lightdash-cli-3.357.0-macos-x64.tar.gz"
      sha256 "d0948949f73bd47e205b81f620f8647804dcefc4100d5c142ca2264935503da5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.357.0/lightdash-cli-3.357.0-linux-x64.tar.gz"
    sha256 "e97ac6c9d51d4667d3585e2aaecf8219889544e7023a9469c2674bccae3ceab6"

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
