class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3349.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3349.0/lightdash-cli-0.3349.0-macos-arm64.tar.gz"
      sha256 "d9ae46871cb65da489745415ade18ec3aaaae0de54f2bf1a546422a9d64b7302"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3349.0/lightdash-cli-0.3349.0-macos-x64.tar.gz"
      sha256 "2668f647ca8939bf9e2405b858f2e203adc13617117732480522b66d98cccb17"
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
