class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.242.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.3/lightdash-cli-1.242.3-macos-arm64.tar.gz"
      sha256 "32bb14d9af2c6ad0d4ea486a23fa3c9e6f755e3a4ed2fe068458fe1ab133c014"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.3/lightdash-cli-1.242.3-macos-x64.tar.gz"
      sha256 "b11218b8ab2ff2fff139cfec46fe22496388ff440ccf377aee4a04b82ce531f6"
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
