class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2615.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2615.1/lightdash-cli-0.2615.1-macos-arm64.tar.gz"
      sha256 "0151da113c089c7b1b304cd2f7df0502c8f479e27077bf1c9c35cdabbb0c4f93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2615.1/lightdash-cli-0.2615.1-macos-x64.tar.gz"
      sha256 "4ffde1ac9a5cfb6bcc5b6ddd5545563277673cd6bd5742e24fed317be854a849"
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
