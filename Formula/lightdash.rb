class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2611.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2611.1/lightdash-cli-0.2611.1-macos-arm64.tar.gz"
      sha256 "1fd83f3a30e9fb03357cf97a6555d65ec0fe993716efadc00afaa8132ab0f1cb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2611.1/lightdash-cli-0.2611.1-macos-x64.tar.gz"
      sha256 "54e462aecd7ae76b4633a3959f06c1cd18cfbb62d81691f9a748aacc83c0d971"
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
