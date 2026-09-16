class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.229.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.229.1/lightdash-cli-2.229.1-macos-arm64.tar.gz"
      sha256 "c925e7c94d792c77bc6870ddbb7a9d1b9864af3c0c80949c4b0547c08370eb01"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.229.1/lightdash-cli-2.229.1-macos-x64.tar.gz"
      sha256 "8f6aafec56fcd78c52134139607679b394ecc721ab8dc87ccf03e9e459e99450"
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
