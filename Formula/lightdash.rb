class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2663.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2663.2/lightdash-cli-0.2663.2-macos-arm64.tar.gz"
      sha256 "9ff53b1329d0752a9d847c14fd5f97f65809fd3aa17f2d1156cfe8effa86bfac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2663.2/lightdash-cli-0.2663.2-macos-x64.tar.gz"
      sha256 "4ca042a67abc5b3ac384a31679a815bfe8ba833c7455f7aefb84e801166aeb13"
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
