class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3352.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3352.0/lightdash-cli-0.3352.0-macos-arm64.tar.gz"
      sha256 "c3994cdc078cefb250c5fdd9007357ee5935c8e0f089d1f7c981ffa979ca4539"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3352.0/lightdash-cli-0.3352.0-macos-x64.tar.gz"
      sha256 "64ccf83682d900492f66e4a3caf3fcce9c04ca1b7e00faca3ddac2e30723ec66"
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
