class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2864.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.5/lightdash-cli-0.2864.5-macos-arm64.tar.gz"
      sha256 "b7c9d0fb30882e0add981784bd00b4e2cbf7f9a59a38d7f1b1fa7f75f521a227"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.5/lightdash-cli-0.2864.5-macos-x64.tar.gz"
      sha256 "c2e8a884a67ae124deb68d661eb29bdc3fdffb9a14d3717eb9326c1e0c24930e"
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
