class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.238.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.238.0/lightdash-cli-2.238.0-macos-arm64.tar.gz"
      sha256 "8fa4e61acf36c8b19f6ba032d77f3038476261f8cf696ef80bc913f668aa7b52"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.238.0/lightdash-cli-2.238.0-macos-x64.tar.gz"
      sha256 "3c4ac5cffa325f96952faae886977e2f8e91bb15102db37ab34a4221e10f1c4c"
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
