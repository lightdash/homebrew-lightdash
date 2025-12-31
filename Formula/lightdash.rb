class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2289.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2289.0/lightdash-cli-0.2289.0-macos-arm64.tar.gz"
      sha256 "3ad71e11fc2d0bbf85f513c53e35b748d891ea70207ede719bef9191d2aeac43"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2289.0/lightdash-cli-0.2289.0-macos-x64.tar.gz"
      sha256 "37261e4751026b34bb142fd13b8f1065933254a5813ef3e813064738cf5d5474"
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
