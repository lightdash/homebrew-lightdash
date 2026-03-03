class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2553.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2553.0/lightdash-cli-0.2553.0-macos-arm64.tar.gz"
      sha256 "ec570da18ac6bcd0622a4605cfd15aee4657acd5a27484b01c7d567436826559"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2553.0/lightdash-cli-0.2553.0-macos-x64.tar.gz"
      sha256 "94ec29c0f92880ebe6dd0b1d7700afd51a66bcfd6fc7ace410697219f95da867"
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
