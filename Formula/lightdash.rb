class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.131.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.131.0/lightdash-cli-2.131.0-macos-arm64.tar.gz"
      sha256 "b2dd745bcb52e351131ae903c510886bb6ba577adc0b99e9e496672f4d957d2b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.131.0/lightdash-cli-2.131.0-macos-x64.tar.gz"
      sha256 "1105bb963db2b738b56a8c7ba36b24bd4eeba552ea35f9e54d863ca94056dc85"
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
