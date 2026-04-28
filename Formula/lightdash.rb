class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2833.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2833.0/lightdash-cli-0.2833.0-macos-arm64.tar.gz"
      sha256 "4ba7c16707ed2dd46d7dff450543c1b656637f1885bd4a9f97741a0ab73795a2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2833.0/lightdash-cli-0.2833.0-macos-x64.tar.gz"
      sha256 "debbc6e91eb87a53db40031b83f6e4a13d592f9489f56aa1d428cd0276ff597e"
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
