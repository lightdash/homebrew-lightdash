class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.162.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.2/lightdash-cli-1.162.2-macos-arm64.tar.gz"
      sha256 "3ed02bcfd68ae2a04ca71461d5ba6405f5c70a8795650669b88ab4a9c89f351e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.2/lightdash-cli-1.162.2-macos-x64.tar.gz"
      sha256 "026c92b477a932dd5a4a94ef2a6d91e242b0dccb689760e409ef332b95249063"
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
