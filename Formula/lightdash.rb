class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2236.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2236.0/lightdash-cli-0.2236.0-macos-arm64.tar.gz"
      sha256 "9b43d0eacf4aa29577e818f2aaaf6803cf0819a179979d8abb9a04a4b40eb12d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2236.0/lightdash-cli-0.2236.0-macos-x64.tar.gz"
      sha256 "f8a02cd8a205d3c961a5a8243c80ba81810c4d40b072476471c8d69fd4389970"
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
