class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.310.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.310.0/lightdash-cli-2.310.0-macos-arm64.tar.gz"
      sha256 "e82fd678feb2dc1e0340e3a4727264be422936001b5bb45d8a0f3d2b64ed1e0a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.310.0/lightdash-cli-2.310.0-macos-x64.tar.gz"
      sha256 "20d586f5c851d5aace07fbb73642b0441f98b8e44b248de06c2f818537b816b1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.310.0/lightdash-cli-2.310.0-linux-x64.tar.gz"
    sha256 "569c480fb90057d1060d60061de808c9690bd8788a0ec6f18a33286df609c377"

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
