class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.274.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.2/lightdash-cli-2.274.2-macos-arm64.tar.gz"
      sha256 "15fa557d5d2758bd829c1cfd00bafdbb4baa43024feb3e62e0bc7f60f4bb95d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.2/lightdash-cli-2.274.2-macos-x64.tar.gz"
      sha256 "e5c2d17dd00e22405d2f79f13e2d93031d575c9cb20d28e713da0d97504ab24f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.2/lightdash-cli-2.274.2-linux-x64.tar.gz"
      sha256 "49670af7d2e8a153cbcb7dded2ed85ef3b1c032842b62f179e717f97400f79b9"
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
