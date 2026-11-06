class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.176.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.176.2/lightdash-cli-3.176.2-macos-arm64.tar.gz"
      sha256 "3cd106eb48b9e5a7d390a2dc8ac0fbfcd4600527d204d656fa7bcfd865776aa8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.176.2/lightdash-cli-3.176.2-macos-x64.tar.gz"
      sha256 "9525dcf15df282ba30d5838141303b4952fe77e0a89a2bb2308901fd1bc2c028"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.176.2/lightdash-cli-3.176.2-linux-x64.tar.gz"
    sha256 "1f104bb5141dd8300e402e7cba5adf7e7ac902c0e24c2b984d95a40928ecdd44"

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
