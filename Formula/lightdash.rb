class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.36.0/lightdash-cli-2.36.0-macos-arm64.tar.gz"
      sha256 "ac132dd07a167a97d55aeb15ae069a0c9fb54ffee93648654253a7a804ad727d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.36.0/lightdash-cli-2.36.0-macos-x64.tar.gz"
      sha256 "877149820026088b0a31409fe7955d0ced29d7b6612b5e704628073401274c5d"
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
