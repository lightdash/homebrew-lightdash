class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2556.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2556.3/lightdash-cli-0.2556.3-macos-arm64.tar.gz"
      sha256 "537b46099d3c5b33f70861ed5f4e9204be8b6e63848aa8ffebfef1b4649c5683"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2556.3/lightdash-cli-0.2556.3-macos-x64.tar.gz"
      sha256 "c81027b114711218308c148959de2271e9640b28aa7a19046db8f72d9e22c0f9"
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
