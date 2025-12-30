class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2285.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2285.2/lightdash-cli-0.2285.2-macos-arm64.tar.gz"
      sha256 "8d07fffa2a586b2dcccc6dfd21510a2d8084098be854e8802641be5936ee3fbb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2285.2/lightdash-cli-0.2285.2-macos-x64.tar.gz"
      sha256 "754010436294e6b16d21ae769cf882aeb89d461927a5665cd223aea22045178c"
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
