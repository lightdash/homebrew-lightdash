class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3293.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3293.0/lightdash-cli-0.3293.0-macos-arm64.tar.gz"
      sha256 "8dd5a325af21c6d6b96e16f0ee602af29845777af033ca7c6332039db595d4a2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3293.0/lightdash-cli-0.3293.0-macos-x64.tar.gz"
      sha256 "80345b7e5186a6c420de0c6f92de90d582ce0170c5e0ef60cdd66e049e71036a"
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
