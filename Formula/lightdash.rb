class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.210.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.210.0/lightdash-cli-1.210.0-macos-arm64.tar.gz"
      sha256 "3a9dfae3a517ce93f726de60f1d34a64cb1a08f16d384f2bf9c4451e57377b11"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.210.0/lightdash-cli-1.210.0-macos-x64.tar.gz"
      sha256 "84c1196cd02b7e4b456a095958336f71bffc52aa890f3670178b5421d283a695"
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
