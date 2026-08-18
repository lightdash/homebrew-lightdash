class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.178.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.178.0/lightdash-cli-1.178.0-macos-arm64.tar.gz"
      sha256 "6c466f26704edb00b128ef27a5cc59d720d9085945bc431ca4935190d26fb11b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.178.0/lightdash-cli-1.178.0-macos-x64.tar.gz"
      sha256 "1ad700b34208344bc6174be537471c251a17705a0dbb23d55f49b8e3a334816c"
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
