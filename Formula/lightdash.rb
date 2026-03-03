class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2556.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2556.0/lightdash-cli-0.2556.0-macos-arm64.tar.gz"
      sha256 "05959d4c6b8bf9a1bfc15678a184d01947b8003d6fe7cbfaffd4dbb9b2fc64a6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2556.0/lightdash-cli-0.2556.0-macos-x64.tar.gz"
      sha256 "7c21c5130d0b3abd645671b446a7ee4dc4a34ee759c1716d258b0cd58221de72"
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
