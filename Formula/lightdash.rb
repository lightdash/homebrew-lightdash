class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2413.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2413.1/lightdash-cli-0.2413.1-macos-arm64.tar.gz"
      sha256 "ec504bcbbcc175aaea7a15dc720c57ec33228a8d3c5fc82d141b563390627d6d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2413.1/lightdash-cli-0.2413.1-macos-x64.tar.gz"
      sha256 "7687d8a9fd810d7878c99951843cccf7ec1de150de0e733a69c15ec59183e4dd"
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
