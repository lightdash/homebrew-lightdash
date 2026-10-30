class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.108.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.108.3/lightdash-cli-3.108.3-macos-arm64.tar.gz"
      sha256 "a4e0dc2ef31e3a9995a49e7387d82555b50c71517a4ab3d291689fc7bb03927f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.108.3/lightdash-cli-3.108.3-macos-x64.tar.gz"
      sha256 "85c77d8113830d57f89e7be9e1c1d9de3a79c56af27f5c321e3098a60a346c7c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.108.3/lightdash-cli-3.108.3-linux-x64.tar.gz"
    sha256 "23de29b8f8215180025263c296742f72be8b6d4a87cf2dc0bec1a4cc7bf7b25f"

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
