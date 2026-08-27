class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.30.0/lightdash-cli-2.30.0-macos-arm64.tar.gz"
      sha256 "b8560311200814a216495bcf3e20b294106d2538c8e6dd9ed3b1191717c7c154"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.30.0/lightdash-cli-2.30.0-macos-x64.tar.gz"
      sha256 "89d607b9d828b126207591b28e4bc5cc9b122123d1c896f3f27cf9a30641b3e9"
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
