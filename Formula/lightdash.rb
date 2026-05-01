class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2855.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2855.1/lightdash-cli-0.2855.1-macos-arm64.tar.gz"
      sha256 "c3fcc549fd1e7aa2467b3944aaefb3b1d60b04e913f42810d7e68c58d2c5537c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2855.1/lightdash-cli-0.2855.1-macos-x64.tar.gz"
      sha256 "86b6a1b29525e85eea6dd63072e8c619952366cd4d3cb2f4f83b87748e40d634"
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
