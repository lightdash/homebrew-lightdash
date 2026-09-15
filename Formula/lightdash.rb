class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.223.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.223.0/lightdash-cli-2.223.0-macos-arm64.tar.gz"
      sha256 "2a30ead1436310a338074836d2054d3654387d433c09e826e7b804102ac8d75c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.223.0/lightdash-cli-2.223.0-macos-x64.tar.gz"
      sha256 "43b89d287c566a0f5a50db031c5a3cfa64e92942b98ca9845c9ac9173b0f84f5"
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
