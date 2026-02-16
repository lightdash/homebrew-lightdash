class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2473.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2473.0/lightdash-cli-0.2473.0-macos-arm64.tar.gz"
      sha256 "b20353e714886ff9d088ce62a811d365c51af39c5de1376a16a1c9ef96ec85bc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2473.0/lightdash-cli-0.2473.0-macos-x64.tar.gz"
      sha256 "45881f30823909cf4869cd8eecb8c00f4cce1c257a15c21b1d8448a232472374"
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
