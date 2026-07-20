class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3423.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3423.1/lightdash-cli-0.3423.1-macos-arm64.tar.gz"
      sha256 "2df7d3e628ec702beea7a55943fb16e5f0c297990a52e7bf4d09d3623ce5b537"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3423.1/lightdash-cli-0.3423.1-macos-x64.tar.gz"
      sha256 "2e066489005f1bf23ffa000cf4c446fa0f4875043c445f8ffe5608b1c7651c39"
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
