class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.33.0/lightdash-cli-2.33.0-macos-arm64.tar.gz"
      sha256 "dc41d99ceb086bee876cc38d1084a1cff7948b9d8686e8ea0f3f20c138fa0f42"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.33.0/lightdash-cli-2.33.0-macos-x64.tar.gz"
      sha256 "fa1df0b68d7fcdd5e353f751647b66ed537690a769a9239ad2c58620f07942e6"
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
