class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3028.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3028.1/lightdash-cli-0.3028.1-macos-arm64.tar.gz"
      sha256 "a97a412a6f5ad0ba1b7d5100adce9746d6b9e8628882446faa617d1cf37349fd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3028.1/lightdash-cli-0.3028.1-macos-x64.tar.gz"
      sha256 "cd51c74dc2a8d88f678b4ee50e19eb4e4d60fddfebc2f2456c6746f1ff679089"
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
