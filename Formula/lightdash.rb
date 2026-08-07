class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.103.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.103.0/lightdash-cli-1.103.0-macos-arm64.tar.gz"
      sha256 "10bd10096a7f867f2896445280b62ea733b54bc26d12e64ed065f54ca2a0b86a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.103.0/lightdash-cli-1.103.0-macos-x64.tar.gz"
      sha256 "232caf501cba5679f57ff63b6e6fe571f20b9b47fe389ff1f260517c09c2dce1"
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
