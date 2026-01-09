class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2324.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2324.0/lightdash-cli-0.2324.0-macos-arm64.tar.gz"
      sha256 "935027d868584ad02533fa0861bfa0924152b1dcf350e152643f2f31a8dc9422"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2324.0/lightdash-cli-0.2324.0-macos-x64.tar.gz"
      sha256 "9653608a757ad547dd08296439805d39cbf65a0e29470eb0ceb58c32039bee9b"
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
