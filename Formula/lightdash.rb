class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2186.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2186.0/lightdash-cli-0.2186.0-macos-arm64.tar.gz"
      sha256 "9829bf690fd7d3db3582f6f0dcfd0bd334cdd049bbd049df063d04b6dc587265"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2186.0/lightdash-cli-0.2186.0-macos-x64.tar.gz"
      sha256 "f0670181f509f0671036e6ead6da167bf6ccb84377519ffe1b7e3c033ad3fe25"
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
