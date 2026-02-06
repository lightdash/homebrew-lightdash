class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2434.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2434.0/lightdash-cli-0.2434.0-macos-arm64.tar.gz"
      sha256 "24a69b65280be807dd163112aa12c63740e89261c3a7fe8e78b71d3f799fcbbb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2434.0/lightdash-cli-0.2434.0-macos-x64.tar.gz"
      sha256 "fc26d1b224baca8e0ef572d89a26ffbf1c5f80baf414ae4b64843f9bb4e163db"
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
