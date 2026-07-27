class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3485.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3485.0/lightdash-cli-0.3485.0-macos-arm64.tar.gz"
      sha256 "99ccb1f7ff95a001fff344b6acd31844e0fcdcea3cbca6fa26006170fd220a38"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3485.0/lightdash-cli-0.3485.0-macos-x64.tar.gz"
      sha256 "7a3a231c2f7c5415e80090cf857633d578c3a8eaf0a9e9ff7a78cd0c0a9bf234"
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
