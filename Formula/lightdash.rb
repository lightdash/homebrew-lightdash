class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.105.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.105.0/lightdash-cli-2.105.0-macos-arm64.tar.gz"
      sha256 "c7095670e814d4e41820e9ad8ae012a2c8515843ace2a61dc4f41381c7e03115"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.105.0/lightdash-cli-2.105.0-macos-x64.tar.gz"
      sha256 "ab0202b661b4a342e386b3ebb63c48605af3a203d5047a76c5b6cd92ae81537b"
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
