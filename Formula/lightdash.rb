class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2585.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2585.0/lightdash-cli-0.2585.0-macos-arm64.tar.gz"
      sha256 "e4bb320e3851628cb62c2c4b2c223c8a66eddee5d4704192e53001403c38967c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2585.0/lightdash-cli-0.2585.0-macos-x64.tar.gz"
      sha256 "73a3cac49b3cd8b102c412b1d26de47f39a98d3aa598ef85cf06ede3e9f1d895"
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
