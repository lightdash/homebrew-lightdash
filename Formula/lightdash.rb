class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2610.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2610.0/lightdash-cli-0.2610.0-macos-arm64.tar.gz"
      sha256 "25cee53373740d8fedff481cabbcf10c42c0794449128c2f8e4cf66b877b791b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2610.0/lightdash-cli-0.2610.0-macos-x64.tar.gz"
      sha256 "c1c71e9e9970c66759f4d89900db86e6736a973e9afcaf5e75ed9d5e35563238"
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
