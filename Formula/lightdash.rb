class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2511.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2511.0/lightdash-cli-0.2511.0-macos-arm64.tar.gz"
      sha256 "8a18961ee33beef0c3e441d7c3d1df35d1742cecd04b38eaddfa955937fe5075"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2511.0/lightdash-cli-0.2511.0-macos-x64.tar.gz"
      sha256 "75810798973462b679a5fb18e550aa741c9b06ce420d79e549160062046f3a13"
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
