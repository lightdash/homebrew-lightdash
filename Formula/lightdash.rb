class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3301.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3301.0/lightdash-cli-0.3301.0-macos-arm64.tar.gz"
      sha256 "423a5aea3b4298ebb1a6c3ae22686bd11a370d767f9d7d096b575b0a55434b20"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3301.0/lightdash-cli-0.3301.0-macos-x64.tar.gz"
      sha256 "815a6943cc6364d6d23bb4c81af20ad67ea9221e803baf44c43ba3376d51bedb"
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
