class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3163.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3163.0/lightdash-cli-0.3163.0-macos-arm64.tar.gz"
      sha256 "f6e78048cbe82b6049deed8cca6207c15920f117f53c10839b0e6dfb08a80647"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3163.0/lightdash-cli-0.3163.0-macos-x64.tar.gz"
      sha256 "0c512cd951d309d014595eee8f79ce0337b198d73d19245d7c940f7d3bb6045e"
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
