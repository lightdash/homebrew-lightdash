class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2195.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2195.0/lightdash-cli-0.2195.0-macos-arm64.tar.gz"
      sha256 "9f34ac100aa7b700ee3f7a9b317b2435d390c1dc0b0fe0c00a95deea194e9ef0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2195.0/lightdash-cli-0.2195.0-macos-x64.tar.gz"
      sha256 "d1aa95d231d006e7957dff017b833e652d8946fd9110c5f124eb470bcfdd387d"
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
