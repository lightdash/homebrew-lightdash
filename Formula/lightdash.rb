class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.263.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.263.0/lightdash-cli-2.263.0-macos-arm64.tar.gz"
      sha256 "f76a1cdf0ac7cfc38d41da891373b82b92a39e9bae668f5e53185385c9541886"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.263.0/lightdash-cli-2.263.0-macos-x64.tar.gz"
      sha256 "b1fff97a5a49560a74182856883db3965314600c913e71f3fdcef007a546489b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.263.0/lightdash-cli-2.263.0-linux-x64.tar.gz"
      sha256 "0d7394cf4d7062fd4e561c346f3848e01188bb2e2ada29b5698117ea185076c2"
    end
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
