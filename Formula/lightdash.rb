class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.63.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.63.0/lightdash-cli-1.63.0-macos-arm64.tar.gz"
      sha256 "2a785b1ebb9b14900a7bf0e7e65d36e9a18b6a120578fdfe923146c2fd3fc878"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.63.0/lightdash-cli-1.63.0-macos-x64.tar.gz"
      sha256 "aef8c92abb6afaefd8b124774a10e1042309588a2a4dc5203409c2a4269f33d9"
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
