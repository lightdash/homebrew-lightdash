class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2262.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.5/lightdash-cli-0.2262.5-macos-arm64.tar.gz"
      sha256 "5257d181e6b88be58c7b9f9c3adf02e593701fac889f47d64a8c8d13eaa9ac3b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.5/lightdash-cli-0.2262.5-macos-x64.tar.gz"
      sha256 "6fbd2f1d9e23e80357d8046de22c0ba0473d076d9de7a8a7d2b58400806d4030"
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
