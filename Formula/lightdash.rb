class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.82.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.82.1/lightdash-cli-2.82.1-macos-arm64.tar.gz"
      sha256 "a997129c5cf8d11ba66a074699db091f084861ee20185566ef2320c0b5094de2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.82.1/lightdash-cli-2.82.1-macos-x64.tar.gz"
      sha256 "bfa478d359eeb580b385ccfb9691ea5c034d01efea30f1c0bbc17720e2bed3ce"
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
