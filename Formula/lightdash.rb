class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.236.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.236.1/lightdash-cli-3.236.1-macos-arm64.tar.gz"
      sha256 "cf24265b97ee1c09b6ecac5ae7f64279bb63adb8f25d2d5d8480babf7bbdc5da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.236.1/lightdash-cli-3.236.1-macos-x64.tar.gz"
      sha256 "6037854b090bd97d1bd3bb735288f4faddf9cef010e2643bd9e8b449febb8d0e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.236.1/lightdash-cli-3.236.1-linux-x64.tar.gz"
    sha256 "68037e3c5c8314b7b2e39782ee0b9d9e5c59c162ef3bf7923add803c5e529521"

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
