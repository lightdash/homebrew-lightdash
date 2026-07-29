class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.18.1/lightdash-cli-1.18.1-macos-arm64.tar.gz"
      sha256 "7bb757f8fb3c95a042e9423eb24ea3afa956da1a495f2d57c9a702d2f49453b0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.18.1/lightdash-cli-1.18.1-macos-x64.tar.gz"
      sha256 "5954ee157cc8b6c808577d8fadb722b4c69e8b8a4d0d55227a8178254c1131c6"
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
