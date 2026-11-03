class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.137.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.137.0/lightdash-cli-3.137.0-macos-arm64.tar.gz"
      sha256 "187600ab328c0bd15df76c52bb72c14be7db8c2253d3b2eba7b61594a3ab8e07"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.137.0/lightdash-cli-3.137.0-macos-x64.tar.gz"
      sha256 "7f4b79ec8164f86894245dec07904fb01fe716c581458c0fb4e2a704a63a11a5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.137.0/lightdash-cli-3.137.0-linux-x64.tar.gz"
    sha256 "f1b1f089fc39073ddf2a7c4103c37f611056f246ce31563eb5a5551eb3d1acc8"

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
