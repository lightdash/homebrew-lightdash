class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.164.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.164.1/lightdash-cli-2.164.1-macos-arm64.tar.gz"
      sha256 "37ff6c7e0faf02fcc8a87e871ba8f67a07d39c79f162839493611bf3097beb28"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.164.1/lightdash-cli-2.164.1-macos-x64.tar.gz"
      sha256 "b6e9b48e3e010585b6a58c0b7894e17e20cc6598e7db342df0ff623eeccf1e23"
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
