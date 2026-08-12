class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.141.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.141.0/lightdash-cli-1.141.0-macos-arm64.tar.gz"
      sha256 "af8d9ef4545f74b94062b390c7c711223272a0b897fcddbebf4bade3548fa8d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.141.0/lightdash-cli-1.141.0-macos-x64.tar.gz"
      sha256 "705140b79ab6dd0d1976dea971161cb4baeb757ddda70e4e9d5b5f81c36cf652"
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
