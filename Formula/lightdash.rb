class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3252.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3252.1/lightdash-cli-0.3252.1-macos-arm64.tar.gz"
      sha256 "a8bc6ae620b89898d81e3f55c29fcfeea55096496b269b1b378bcbfe7151da3c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3252.1/lightdash-cli-0.3252.1-macos-x64.tar.gz"
      sha256 "76e9137151d024886fdba20b3eba9070d1cc8f0065755228dd3c600d8cb76aea"
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
