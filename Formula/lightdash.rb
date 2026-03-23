class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2649.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2649.0/lightdash-cli-0.2649.0-macos-arm64.tar.gz"
      sha256 "eb2d81eb1ed836aa620f55b53179ce80fd34d2ea9f42c12755be092fa226ca86"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2649.0/lightdash-cli-0.2649.0-macos-x64.tar.gz"
      sha256 "d1a765a66b92c742fa97b5f9383f12ad9d98c7bd8b357a4a572ab3548c31a552"
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
