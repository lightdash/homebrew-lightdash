class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.238.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.238.2/lightdash-cli-2.238.2-macos-arm64.tar.gz"
      sha256 "291867b91b99efbaa3e9a8ad50ad29ea4a036eac73804fdf90added919f4704e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.238.2/lightdash-cli-2.238.2-macos-x64.tar.gz"
      sha256 "04aacea4eb2d317987d9fdd623323f74db587d950a47f055b37ed98f7a3cfe1b"
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
