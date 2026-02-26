class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2528.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2528.0/lightdash-cli-0.2528.0-macos-arm64.tar.gz"
      sha256 "8f52c3d63f00c26c6a30bdd048723a8a9b57df42eaf89d9d8939c376c1edf9f9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2528.0/lightdash-cli-0.2528.0-macos-x64.tar.gz"
      sha256 "d87307e78a2ad694b983ccd77875e1df0a471b1869dcb58d1ad29b0a447b8ca5"
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
