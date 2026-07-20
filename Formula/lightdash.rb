class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3422.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3422.1/lightdash-cli-0.3422.1-macos-arm64.tar.gz"
      sha256 "c63b8008c384a6c7c61cd1857ee6a53610ef11605555acaf803cab8bc2b5f16e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3422.1/lightdash-cli-0.3422.1-macos-x64.tar.gz"
      sha256 "d619e192abf69fd96047bef74eefe3cf34030e818f8582c5d20e2811a31c5530"
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
