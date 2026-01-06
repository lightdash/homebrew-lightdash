class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2301.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2301.2/lightdash-cli-0.2301.2-macos-arm64.tar.gz"
      sha256 "3eade2506664c0b7e167644db1c8dd67ebed089d48876b06f72ac0e01db52ae3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2301.2/lightdash-cli-0.2301.2-macos-x64.tar.gz"
      sha256 "63dc11feca121840ce8853ab727324c60361d77d31fb37fc1ced361d96901c83"
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
