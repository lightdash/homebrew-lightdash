class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2285.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2285.1/lightdash-cli-0.2285.1-macos-arm64.tar.gz"
      sha256 "866fa33383ed960fb201f1d7ac5767984716b66559aeb8bc3154176d49e3df8f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2285.1/lightdash-cli-0.2285.1-macos-x64.tar.gz"
      sha256 "8e07da611ceac7f39fe28fb6988c9b356c61aec6ccd715a68d5207a92a0b9ca8"
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
