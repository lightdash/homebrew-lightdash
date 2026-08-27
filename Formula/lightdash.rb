class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.26.0/lightdash-cli-2.26.0-macos-arm64.tar.gz"
      sha256 "1812371acc462b4dc12945e1dc1f135e6658dae036f5133591cf54d0dd27aee2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.26.0/lightdash-cli-2.26.0-macos-x64.tar.gz"
      sha256 "7f343684a270481ec25bb9b896519757951a91fc0bb246eed370b2feb613e078"
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
