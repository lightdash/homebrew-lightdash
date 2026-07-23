class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3467.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3467.0/lightdash-cli-0.3467.0-macos-arm64.tar.gz"
      sha256 "83329b2dd6590cd35b0dbe60dd0a3cb4471ea70568276c4b984860fb2512b4e1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3467.0/lightdash-cli-0.3467.0-macos-x64.tar.gz"
      sha256 "0b91912c95238a91e446c07a1bd489507947292ce2c120fb8f649ee8b15f3f55"
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
