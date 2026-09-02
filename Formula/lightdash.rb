class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.92.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.92.0/lightdash-cli-2.92.0-macos-arm64.tar.gz"
      sha256 "9981571159255709f01479d167c0a90bb74388faeff1cc12aabc4b25a57e7f01"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.92.0/lightdash-cli-2.92.0-macos-x64.tar.gz"
      sha256 "638f7efa0468ee82145ec2c44ed14098de52e4d8abdb83c5f0c23b6c907b1f3d"
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
