class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.170.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.170.0/lightdash-cli-2.170.0-macos-arm64.tar.gz"
      sha256 "2fc184cdc92ed192ab062b2a957a68d0cdb19cd56ceeab1dc2c13a47b8c750dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.170.0/lightdash-cli-2.170.0-macos-x64.tar.gz"
      sha256 "14a845e992fff6f011830edf493c33571d9719cc87cd96321f09bbd224b8754e"
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
