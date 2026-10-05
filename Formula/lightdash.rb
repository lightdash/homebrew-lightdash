class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.432.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.432.0/lightdash-cli-2.432.0-macos-arm64.tar.gz"
      sha256 "efd6ac826da05f4af8c4e032bdd60a3524889d812413a445b567a0cf587477bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.432.0/lightdash-cli-2.432.0-macos-x64.tar.gz"
      sha256 "94571309beb93e4186404d76344cc691908be8e8968b817974fb2f6bf57e5706"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.432.0/lightdash-cli-2.432.0-linux-x64.tar.gz"
    sha256 "0bde4f1c8782792f57733c25a73aeb3167e328b55e78a7a88b137c82f6175fd7"

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
