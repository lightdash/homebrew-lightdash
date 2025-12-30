class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2288.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2288.0/lightdash-cli-0.2288.0-macos-arm64.tar.gz"
      sha256 "a56e95721b8b4aa0ab7abc5dec16b6e7dcf1e86245596e3fc7a5fede5d797cb1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2288.0/lightdash-cli-0.2288.0-macos-x64.tar.gz"
      sha256 "fa816270a05b2ff21e2f959c5ed2034f773619cc45cbd338268ad9014fb1bf5a"
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
