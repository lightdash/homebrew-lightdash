class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2441.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2441.1/lightdash-cli-0.2441.1-macos-arm64.tar.gz"
      sha256 "b50fe7e293cf92c2a33637fcab88eb79f1f9445e15fee42912ea23542b0ae7bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2441.1/lightdash-cli-0.2441.1-macos-x64.tar.gz"
      sha256 "0a28ab3d55bbc3bf120b66817ffcd1a97bb4105b7557dbc0c53b94e0db87bcaf"
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
