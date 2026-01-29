class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2391.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2391.0/lightdash-cli-0.2391.0-macos-arm64.tar.gz"
      sha256 "d0c5809ace571e896ff36f22816c7184344f56e73959f9e98cf42a04c9bbfbd8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2391.0/lightdash-cli-0.2391.0-macos-x64.tar.gz"
      sha256 "3ad81fedf6088b0875d83f7c6e4646a0737d7322ebab663b3ac26500875673b7"
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
