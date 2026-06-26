class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3252.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3252.0/lightdash-cli-0.3252.0-macos-arm64.tar.gz"
      sha256 "6a6350b38b3ce99a9a1594fc5d566d1c9c8b9e2d48efd10a140718de0ddad931"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3252.0/lightdash-cli-0.3252.0-macos-x64.tar.gz"
      sha256 "ab25394f26a47bf64b8d85e00065cd88cfcdd0b6c1c02c8cfcc42f52e30f5ccd"
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
