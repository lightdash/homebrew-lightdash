class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3104.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3104.5/lightdash-cli-0.3104.5-macos-arm64.tar.gz"
      sha256 "1a00dc4502c54e7eb1ef3f0931f9630297a6b85d3aad616c9b86dece05bd5cae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3104.5/lightdash-cli-0.3104.5-macos-x64.tar.gz"
      sha256 "4e27b010726b2ddafd3b6ca9d40973cf59f3b8493f8527ea4483a3d9347f8cc1"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
