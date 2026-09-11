class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.198.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.0/lightdash-cli-2.198.0-macos-arm64.tar.gz"
      sha256 "4635413718cff29cef0636e1596b4f645f56408e9f5bffabf63de24097598e2c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.0/lightdash-cli-2.198.0-macos-x64.tar.gz"
      sha256 "f33641052b83d751d11fd3d2e8ca3cb7c18753cabde80fa4377d3b6ef0eae315"
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
