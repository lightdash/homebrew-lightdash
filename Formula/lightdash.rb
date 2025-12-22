class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.9/lightdash-cli-0.2270.9-macos-arm64.tar.gz"
      sha256 "15c019e90fdf065812990c67f3bf39a0aa27488ae9b42a918e606f41d275c2e8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.9/lightdash-cli-0.2270.9-macos-x64.tar.gz"
      sha256 "f64de2cc05f38234af783d0096a6b4dd3a194ed6600b724c5ed162273ef4b699"
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
