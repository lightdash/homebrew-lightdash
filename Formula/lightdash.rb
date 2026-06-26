class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3253.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3253.2/lightdash-cli-0.3253.2-macos-arm64.tar.gz"
      sha256 "8f4862376b244ba456cec27f8f750efa6913e393d03217dcc3d9774a10c6b923"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3253.2/lightdash-cli-0.3253.2-macos-x64.tar.gz"
      sha256 "da030d66513e654e84398cd274fa7387b666d8462a789c51e6247fc12aaadb36"
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
