class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.331.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.331.0/lightdash-cli-3.331.0-macos-arm64.tar.gz"
      sha256 "94da5efad4e65121e0dd7750431bb9d0e8d8ea01c1759ade10094701df23f5bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.331.0/lightdash-cli-3.331.0-macos-x64.tar.gz"
      sha256 "2579b208f54fec43afeefac13e9ec4e814efa4fc26b8a9354ffe09ed0fb7478c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.331.0/lightdash-cli-3.331.0-linux-x64.tar.gz"
    sha256 "90d59b818f5e85027a6847f3a1889a01bf0d97c1aaab44d8d83747b84127aced"

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
