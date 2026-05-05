class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2872.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2872.0/lightdash-cli-0.2872.0-macos-arm64.tar.gz"
      sha256 "d1ae59d7d617000e8edf2fbaccf57ef3c2b1fad63d3e0774951194c2585f67d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2872.0/lightdash-cli-0.2872.0-macos-x64.tar.gz"
      sha256 "3324914081d5051c82d2cf2d822c19411cfb2de9c8330a94a30c8b328502643b"
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
