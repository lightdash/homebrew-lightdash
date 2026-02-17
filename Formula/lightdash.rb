class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2475.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2475.0/lightdash-cli-0.2475.0-macos-arm64.tar.gz"
      sha256 "dfd4434e8989af6d2d703007a15c8c4a06967254d5add5b54c678cd071899a60"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2475.0/lightdash-cli-0.2475.0-macos-x64.tar.gz"
      sha256 "a1a6bebfc65aa5fe559e75ba0f39fdeafca74a8cb6332e72387ca101b1a07e4e"
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
