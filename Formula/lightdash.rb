class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2602.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2602.0/lightdash-cli-0.2602.0-macos-arm64.tar.gz"
      sha256 "6461fe498d8fb985a973a4fdf273d6e7c6215ae8579ee5495b9b335c446740f6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2602.0/lightdash-cli-0.2602.0-macos-x64.tar.gz"
      sha256 "ac027d416304c9266f88a106eea7c4240bc289d307bd156818ddd0101460f67b"
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
