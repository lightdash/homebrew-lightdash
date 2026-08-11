class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.120.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.120.1/lightdash-cli-1.120.1-macos-arm64.tar.gz"
      sha256 "83bc18ea20971d965dfbcaf9c54695df64c97297f0ccebdcb1a04e8bd18978bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.120.1/lightdash-cli-1.120.1-macos-x64.tar.gz"
      sha256 "d436813d41f7953bfcf9a57011eaaa0559d1812ea9b9301c6b2c3a6dcf8e4987"
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
