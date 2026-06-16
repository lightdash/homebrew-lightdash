class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3167.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3167.3/lightdash-cli-0.3167.3-macos-arm64.tar.gz"
      sha256 "c141edd3d77a1af80a77698cb3bdeeb26e8072d1cdb7604180cde3205b936e5d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3167.3/lightdash-cli-0.3167.3-macos-x64.tar.gz"
      sha256 "7858d83abf8a65abd62a9fedf13281dd53b9591da0c6aee0a5d85c2f38863fe1"
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
