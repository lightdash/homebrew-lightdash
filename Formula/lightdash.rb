class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.389.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.389.3/lightdash-cli-2.389.3-macos-arm64.tar.gz"
      sha256 "b9f35548dec3205c86108ed2284b09920e33e53b8b3b9a4b89022d1a704f50d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.389.3/lightdash-cli-2.389.3-macos-x64.tar.gz"
      sha256 "92efdc7aa978aa1f18dddc3d87122fb462045a2a2a8748dd818dd23b517d6608"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.389.3/lightdash-cli-2.389.3-linux-x64.tar.gz"
    sha256 "aa7c6fcb1562aebf63d4aadbb277b13e05f09f1f2663b2307ea0729806327a55"

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
