class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3259.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3259.0/lightdash-cli-0.3259.0-macos-arm64.tar.gz"
      sha256 "d1ffb28cadfdfb1282ec5488707ef5d53d6dfb676d267cb42e25b08674c369f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3259.0/lightdash-cli-0.3259.0-macos-x64.tar.gz"
      sha256 "048cfc564f7ee8696fca89973c14ed753b9272699632a0037edf193b6ae49b9b"
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
