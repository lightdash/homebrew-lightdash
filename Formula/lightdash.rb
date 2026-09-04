class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.126.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.126.0/lightdash-cli-2.126.0-macos-arm64.tar.gz"
      sha256 "1dc59cc3f1d9b46b27b7fd8bf7d40b7ebfe9a7c4968fa650afd8ade52bd3dc5c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.126.0/lightdash-cli-2.126.0-macos-x64.tar.gz"
      sha256 "2650aee01ce344e9d67830c58edf93b8821d9a7c2e71fa7d614dd946ba7b8cd6"
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
