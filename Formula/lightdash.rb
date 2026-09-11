class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.194.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.194.2/lightdash-cli-2.194.2-macos-arm64.tar.gz"
      sha256 "08e839fab6500299bdb3909301d1aaea8708706aa6fb0f232429970f2029cbda"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.194.2/lightdash-cli-2.194.2-macos-x64.tar.gz"
      sha256 "29bcd2f4253e7278916b430e444c562df1b3e9b6bbc0adb598c5422e95c2fa55"
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
