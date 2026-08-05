class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.88.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.88.0/lightdash-cli-1.88.0-macos-arm64.tar.gz"
      sha256 "49a22e8ddb68dcd6397df8f5906a54c5a116483277f0774431aa4a6548c31d8a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.88.0/lightdash-cli-1.88.0-macos-x64.tar.gz"
      sha256 "2f1c8ea9922e6a08ab8ba2643ad7fd78aa3642cd5ac1cdab166b60cbb0a26641"
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
