class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.161.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.161.0/lightdash-cli-2.161.0-macos-arm64.tar.gz"
      sha256 "ba56aa20bfe63bdb83f6e20eb3a312fbb8e66c3bf3cd9ca6affcb0cb1db9c319"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.161.0/lightdash-cli-2.161.0-macos-x64.tar.gz"
      sha256 "90db963eac0f13021fdd4703fac6b0048530cda6cec2ff102ec16d08ba36a101"
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
