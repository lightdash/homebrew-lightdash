class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2430.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2430.0/lightdash-cli-0.2430.0-macos-arm64.tar.gz"
      sha256 "bed73d34eb72c6fe252f440c3096e05eb2b498ef6353cf51a4cf9959554fe310"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2430.0/lightdash-cli-0.2430.0-macos-x64.tar.gz"
      sha256 "756655baf48dae406eff61e35215b3dccfbdca1be256b6708ba40540e796aa95"
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
