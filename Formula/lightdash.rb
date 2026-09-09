class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.167.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.167.4/lightdash-cli-2.167.4-macos-arm64.tar.gz"
      sha256 "71353956ba7ac13b5303c5d85f9b8b9aab0bf291f6e2c4dde6d5d853abbcd0fc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.167.4/lightdash-cli-2.167.4-macos-x64.tar.gz"
      sha256 "97c8ad7cb3efaf7d25aa096d9e15588850e8895edf3f99543d46bddf1087a9c7"
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
