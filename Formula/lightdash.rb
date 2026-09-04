class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.127.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.127.0/lightdash-cli-2.127.0-macos-arm64.tar.gz"
      sha256 "6923cab68ef6e6e410a20cc27da6047cc7418a7c9fa244ba374c42b7daf78eff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.127.0/lightdash-cli-2.127.0-macos-x64.tar.gz"
      sha256 "62fb195cdd9ab4c797a9829c2cc3466d62d96f812dcf1a688edaf8160eefcf7d"
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
