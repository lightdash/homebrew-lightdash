class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3238.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3238.0/lightdash-cli-0.3238.0-macos-arm64.tar.gz"
      sha256 "47222df171e0c529b0050a8840a32134dc659aec8664858ae7ecd90c28332269"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3238.0/lightdash-cli-0.3238.0-macos-x64.tar.gz"
      sha256 "f48b93edaf71a4772477c9661eb6098927f9b9a999dad9809630d8c031feda23"
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
