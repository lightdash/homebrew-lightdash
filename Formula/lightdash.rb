class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2364.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2364.0/lightdash-cli-0.2364.0-macos-arm64.tar.gz"
      sha256 "edd4fc0ad612c7c2ae12e4e1add322b51b34f328c68b56342eb1328eddffa42e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2364.0/lightdash-cli-0.2364.0-macos-x64.tar.gz"
      sha256 "6ba7d3785fba759575db3a66f323010b6f592c9c11c5fcc2e39559d532da725e"
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
