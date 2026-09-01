class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.77.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.77.0/lightdash-cli-2.77.0-macos-arm64.tar.gz"
      sha256 "c53aeb93e9050121c08d2f3d1f83a46f3a8a77700368c9b8fbacda35a0c7db16"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.77.0/lightdash-cli-2.77.0-macos-x64.tar.gz"
      sha256 "e34e602129eaec092d2f26727a7ca6a56d3876c99448b48400680331e0e712ef"
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
