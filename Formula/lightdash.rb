class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2320.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2320.1/lightdash-cli-0.2320.1-macos-arm64.tar.gz"
      sha256 "19e49e752bb939a45c8423f3028dcf119b92667563b1a544c520600a4669b970"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2320.1/lightdash-cli-0.2320.1-macos-x64.tar.gz"
      sha256 "d5c5155c0252676ba92a1841c7c9036a04d7cc517d14a0a8f7d7209e0f224e95"
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
