class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3285.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3285.0/lightdash-cli-0.3285.0-macos-arm64.tar.gz"
      sha256 "24fb54b0eb4f5b0448ac014559ba89dac0910b81d7390fdae76a0904958b5da0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3285.0/lightdash-cli-0.3285.0-macos-x64.tar.gz"
      sha256 "eaa6b287df11852ba5e65a83ee3e743af491b4e97747b2f9c925f08bf78c7c27"
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
