class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.77.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.77.0/lightdash-cli-1.77.0-macos-arm64.tar.gz"
      sha256 "ba3da6cfddfe5694020f1557eddce2453950039cc5a269275ef8a57a2beb604b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.77.0/lightdash-cli-1.77.0-macos-x64.tar.gz"
      sha256 "e9d9597f9ea00cf1fef8a479f4c403d08b9740091dd0d202904a87540e27ed66"
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
