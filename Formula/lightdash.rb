class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.88.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.88.1/lightdash-cli-2.88.1-macos-arm64.tar.gz"
      sha256 "9a6cb1115976cccccf272d07cca9be00dd36e44689ab182d9c61652fbe87fab2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.88.1/lightdash-cli-2.88.1-macos-x64.tar.gz"
      sha256 "f82cf54d1cbe392e2d50d183c50ae0885251fce356e3ba3493abcc2c7fcc3a65"
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
