class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.436.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.436.0/lightdash-cli-3.436.0-macos-arm64.tar.gz"
      sha256 "1f8ac870438ba61185456fd3bc7f305d3d9914efeff79103ebc0d7adc6dc7b29"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.436.0/lightdash-cli-3.436.0-macos-x64.tar.gz"
      sha256 "dd8a7948308db0a4010cb38e67932bfb2fd0e1948d532a1b0e69a6bcf6a9b803"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.436.0/lightdash-cli-3.436.0-linux-x64.tar.gz"
    sha256 "6892b0da9c32b79853754d43b119efd9eed1d2d7963e00fea5fa8804e7eebd2f"

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
