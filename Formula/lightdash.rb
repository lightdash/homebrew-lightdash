class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.239.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.239.0/lightdash-cli-1.239.0-macos-arm64.tar.gz"
      sha256 "d4edc71e383cc492e2eb3f31b5c7b3c15d0da46f688289931606a7274832b9c3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.239.0/lightdash-cli-1.239.0-macos-x64.tar.gz"
      sha256 "fe5def22aa0342df7270b4a33502ae51468bbb6910760b78935030de62fba15a"
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
