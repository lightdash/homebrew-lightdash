class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2988.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2988.0/lightdash-cli-0.2988.0-macos-arm64.tar.gz"
      sha256 "9041ba3452625ac35ee13fdf1f2ebfd0e3bf853e2b872032aae4a33727fa9e37"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2988.0/lightdash-cli-0.2988.0-macos-x64.tar.gz"
      sha256 "3e9c7f400233c22318ae2f1a6d4922be94aad10326e7ee28e3240fb6e090c788"
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
