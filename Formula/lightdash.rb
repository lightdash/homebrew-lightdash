class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2232.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2232.0/lightdash-cli-0.2232.0-macos-arm64.tar.gz"
      sha256 "0b4c052fa611d9c82fe427ec51362435e15bb4e6506c1cb17fe6002f42a9fd4e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2232.0/lightdash-cli-0.2232.0-macos-x64.tar.gz"
      sha256 "e6a9a42998bde6425147b4ae0213c0e1d8e8ee95654b7a09d22eee78e19fb613"
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
