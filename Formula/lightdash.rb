class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2670.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2670.0/lightdash-cli-0.2670.0-macos-arm64.tar.gz"
      sha256 "c047ee69ee3d338cd3d18a90c58d57e76f57af9e56c0d383d247e3eb7b2e87e2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2670.0/lightdash-cli-0.2670.0-macos-x64.tar.gz"
      sha256 "c6fd699872439a786703c20926a5bcc91376cd691d7a0239f4fa432a2cbe54d4"
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
