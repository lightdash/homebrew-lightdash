class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.323.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.323.0/lightdash-cli-3.323.0-macos-arm64.tar.gz"
      sha256 "26393d14b56fda398656dcc38411a11f792393da72ed537a4a7a6f29c1bc086e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.323.0/lightdash-cli-3.323.0-macos-x64.tar.gz"
      sha256 "58003715d3da810723b878e9e9003f2c06310ad3f0a1aa905df9cc3515b6e5ee"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.323.0/lightdash-cli-3.323.0-linux-x64.tar.gz"
    sha256 "d0e8cd4eca723bd5e3a445f6a73e05fbe4bcd6254f3fef9d51bd25f0484faba2"

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
