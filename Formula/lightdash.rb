class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3164.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3164.0/lightdash-cli-0.3164.0-macos-arm64.tar.gz"
      sha256 "c75ab2f6bad6ea699dfa105cd8727d3ab37cc538250f59f30441bda75abc82da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3164.0/lightdash-cli-0.3164.0-macos-x64.tar.gz"
      sha256 "b50f0c4d5522f2dbc3da13cbfdcc2b6da00be76617ad6edb8633d4421d513c74"
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
