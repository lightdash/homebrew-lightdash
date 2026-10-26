class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.60.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.60.0/lightdash-cli-3.60.0-macos-arm64.tar.gz"
      sha256 "030738bb9b094c72ada2d0dd2049b617807bf70de1e6dc618dc6fe8857ffd823"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.60.0/lightdash-cli-3.60.0-macos-x64.tar.gz"
      sha256 "d9d863951eda2c33f89323b6436d20d5bfb1df7a2fc9cb3d1b6adabc2628400b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.60.0/lightdash-cli-3.60.0-linux-x64.tar.gz"
    sha256 "64c6cb4031ef0e412356e7d77f70e88855110875370edeac633808928238ce18"

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
