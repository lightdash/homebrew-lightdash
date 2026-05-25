class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3014.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3014.0/lightdash-cli-0.3014.0-macos-arm64.tar.gz"
      sha256 "7de3740825be081cb9c3717c5ba1f2ed71a98685b296d5481ec5848c86ceadb9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3014.0/lightdash-cli-0.3014.0-macos-x64.tar.gz"
      sha256 "eaad20930d15b5196e52e3b31acd57e0f4596defafec05d50033438ead45ab99"
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
