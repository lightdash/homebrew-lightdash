class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3051.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3051.0/lightdash-cli-0.3051.0-macos-arm64.tar.gz"
      sha256 "cce88efe035fc500273d3dcfc20ac2e3f59c885f8831c27817ba2dc67da6690b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3051.0/lightdash-cli-0.3051.0-macos-x64.tar.gz"
      sha256 "d3fc2adc3305e629646d92eb3098196ba17918ad566ac37e946935dcfd133e70"
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
