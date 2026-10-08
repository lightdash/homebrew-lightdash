class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.490.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.490.0/lightdash-cli-2.490.0-macos-arm64.tar.gz"
      sha256 "27f2fda7364c020b4d0275ff3ca2fe13364626dfbb55d268e8c0f1cbb37d2295"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.490.0/lightdash-cli-2.490.0-macos-x64.tar.gz"
      sha256 "cc6495fd55b9c1d066de66e0d3e7823bd8182cd79118b11f469c23d23eb4471b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.490.0/lightdash-cli-2.490.0-linux-x64.tar.gz"
    sha256 "556ef1702554bb249335ec05e788e96c80abdbaac4038fdd4423adbb7eb0d4c9"

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
