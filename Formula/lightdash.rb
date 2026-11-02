class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.118.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.118.1/lightdash-cli-3.118.1-macos-arm64.tar.gz"
      sha256 "0a1ea5f4865de78b574195fa2cc1f41c1107695c0f708b89f7d6a273fa8eb817"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.118.1/lightdash-cli-3.118.1-macos-x64.tar.gz"
      sha256 "7fed89b4d981f19d479777bab9be08061611f6161ab925a3adb49b431f206071"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.118.1/lightdash-cli-3.118.1-linux-x64.tar.gz"
    sha256 "0dc4a3946df3a3dd60d7194fef1bd9a893b44b3c6071dd10096fca1dea9f7ad4"

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
