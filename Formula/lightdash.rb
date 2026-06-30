class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3263.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3263.0/lightdash-cli-0.3263.0-macos-arm64.tar.gz"
      sha256 "20060e61f52302e9f019fca38995d0d60a2161d480eb2d66c831ef6be8edc0b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3263.0/lightdash-cli-0.3263.0-macos-x64.tar.gz"
      sha256 "a310f849dba2b36b8d7df99e11f15a7f1ca64035de5c83afa6fccb4befda6738"
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
