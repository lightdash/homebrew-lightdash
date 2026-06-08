class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3110.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3110.2/lightdash-cli-0.3110.2-macos-arm64.tar.gz"
      sha256 "b64e7f9e60a464b3c51dc8d9af944653f4e007ec15e295a9bd3494d114e5f352"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3110.2/lightdash-cli-0.3110.2-macos-x64.tar.gz"
      sha256 "9bc68883ac8b165eb0e047151f906b31d2e373acc5fbb000d088a3517c8a738e"
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
