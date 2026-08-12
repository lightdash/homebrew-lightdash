class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.143.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.143.0/lightdash-cli-1.143.0-macos-arm64.tar.gz"
      sha256 "5444ed5a2c18aef14b373cd18409ca49e1f9a7d56b05bdaa75ca00d34d9e9026"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.143.0/lightdash-cli-1.143.0-macos-x64.tar.gz"
      sha256 "ccb1bffc4a46285014205d207080e5805bc39e7ca5f345511c4d9f3f4356506d"
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
