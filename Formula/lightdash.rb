class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.114.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.114.1/lightdash-cli-2.114.1-macos-arm64.tar.gz"
      sha256 "27ef772d7fb55416fb35a0b6d8ce95c6b7efe191f96cc283e35f80de186046b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.114.1/lightdash-cli-2.114.1-macos-x64.tar.gz"
      sha256 "38b5f001f5238452b883e4d139573c4f4ef9708dd2bbfb71a732e18034fe1319"
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
