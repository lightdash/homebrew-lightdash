class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.240.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.240.1/lightdash-cli-3.240.1-macos-arm64.tar.gz"
      sha256 "a6282574e4350f8226dfbddbf281f6979a5e8ca8f3e5eb503493dc0880182b8f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.240.1/lightdash-cli-3.240.1-macos-x64.tar.gz"
      sha256 "16bffc26394723c27fb58769b79b18bc60dce8ad2ec17b62c2bbf56dec7aebcd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.240.1/lightdash-cli-3.240.1-linux-x64.tar.gz"
    sha256 "37d81bdf65f8dd53ff92531ee9d86fb9bc7b30e1824ed9f46b2b798540d7bea6"

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
