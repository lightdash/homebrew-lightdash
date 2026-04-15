class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2760.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2760.0/lightdash-cli-0.2760.0-macos-arm64.tar.gz"
      sha256 "9f2a4e2e92777e5cdcf352e8f129185f868bac0abfea5b536c2852d64f6687c3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2760.0/lightdash-cli-0.2760.0-macos-x64.tar.gz"
      sha256 "825192edbb4b1b16ca66ba7a491b21e63a80744bfcd6f0f032cdae14903fb831"
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
