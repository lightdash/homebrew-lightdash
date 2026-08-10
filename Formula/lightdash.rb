class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.111.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.111.0/lightdash-cli-1.111.0-macos-arm64.tar.gz"
      sha256 "bfc6a2166c1c11486b738a3c067d3fcd07a0077066ead9e0a68f927994aec3bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.111.0/lightdash-cli-1.111.0-macos-x64.tar.gz"
      sha256 "001d085ce738bb5b561e36dff5c370d6c5ff883e8a82019808677c10469435b3"
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
