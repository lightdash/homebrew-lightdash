class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3280.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3280.0/lightdash-cli-0.3280.0-macos-arm64.tar.gz"
      sha256 "f97736c0365c73642e8ff05d778bbacce50cf92071720c98b698e5d290760c83"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3280.0/lightdash-cli-0.3280.0-macos-x64.tar.gz"
      sha256 "1e6622f5bf8b5508d595e04c7613099f30244f38cbf4cfc25d175fcceb874ef6"
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
