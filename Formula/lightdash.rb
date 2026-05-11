class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2905.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2905.0/lightdash-cli-0.2905.0-macos-arm64.tar.gz"
      sha256 "6458f5e1c32e7ea0ce03214e8e90fe38ed6b4c7d0bf53d37ccea0332e3a42f79"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2905.0/lightdash-cli-0.2905.0-macos-x64.tar.gz"
      sha256 "12909e535dcd47d438318e4394543b8c091eed1ca9ebd25e64fe8d326b48dad1"
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
