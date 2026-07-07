class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3319.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3319.0/lightdash-cli-0.3319.0-macos-arm64.tar.gz"
      sha256 "8cce7636b05b89cde2311406bce0fdfb508a5686fa822972293e12dbb2ef01f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3319.0/lightdash-cli-0.3319.0-macos-x64.tar.gz"
      sha256 "d28cf608b9d75b65e0c401cd36871c28d265464f3698cf9440dc781aa3e0bc4e"
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
