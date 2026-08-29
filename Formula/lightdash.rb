class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.57.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.57.0/lightdash-cli-2.57.0-macos-arm64.tar.gz"
      sha256 "d94b640edadf9bc8f027652fe89327e91286b77ebb1bc04dde5db2c7f72b68aa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.57.0/lightdash-cli-2.57.0-macos-x64.tar.gz"
      sha256 "d9b78fa90c844a831264ded1cd33b296d3b02014404e83375bb45dd43302b318"
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
