class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2348.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2348.0/lightdash-cli-0.2348.0-macos-arm64.tar.gz"
      sha256 "fcc89f8b8211b6ef68508865b37b2a6e4112028322dc25aa988a8a4d0de43435"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2348.0/lightdash-cli-0.2348.0-macos-x64.tar.gz"
      sha256 "77523fdd97a1d0c61060ab508c57ae532f19d58485fa6c77f08fe9c9d5f376bd"
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
