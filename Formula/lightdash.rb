class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.93.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.93.0/lightdash-cli-2.93.0-macos-arm64.tar.gz"
      sha256 "45c256d500ff9a576ed85cc017de60997743177f0de9e158f586e004be52ae1d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.93.0/lightdash-cli-2.93.0-macos-x64.tar.gz"
      sha256 "4d5bd3b102e8da396fb6ab168683dc0b6a1130ef81f18fa9008184ae0c2e018c"
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
