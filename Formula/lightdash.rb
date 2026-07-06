class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3309.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3309.2/lightdash-cli-0.3309.2-macos-arm64.tar.gz"
      sha256 "22c75a18e8308e83432856539eeb241fea2fd2b09118989619b0220084388855"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3309.2/lightdash-cli-0.3309.2-macos-x64.tar.gz"
      sha256 "96f83edd5fdec6f56c103c4637bca9d23979baae8d4d7c5b7041a0a9a9e242c8"
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
