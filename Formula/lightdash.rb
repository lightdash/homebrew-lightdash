class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3091.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3091.0/lightdash-cli-0.3091.0-macos-arm64.tar.gz"
      sha256 "832aa19695437b6f0ebda5f57fcbc005417db4fe91bb608f92538dfecce84ee0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3091.0/lightdash-cli-0.3091.0-macos-x64.tar.gz"
      sha256 "6014be226f92f105ccb6f48938145ab6970d48b2ab454b8fac60164225e875db"
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
