class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.144.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.144.1/lightdash-cli-3.144.1-macos-arm64.tar.gz"
      sha256 "47e2082f6aea3aad3d9f73b39086eb9f7afcae8908c75da8e69a71204c52ab8a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.144.1/lightdash-cli-3.144.1-macos-x64.tar.gz"
      sha256 "402bc19c62b2ecc7f3d9bceddd0fa76c58b08fc29fb6b7471d1dbd38e215f64c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.144.1/lightdash-cli-3.144.1-linux-x64.tar.gz"
    sha256 "bf952fe4f23654e7bfb5b8b23dfc125447faf03cc2591cbd0d5a92976a2f781c"

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
