class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2340.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2340.2/lightdash-cli-0.2340.2-macos-arm64.tar.gz"
      sha256 "423e0b180e8edb2e4db341d388366ac041f40cf18de10246b31686b179cf5e98"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2340.2/lightdash-cli-0.2340.2-macos-x64.tar.gz"
      sha256 "c2615fa940ee9157eca2b48bf2ec068032a2ffef67151488cf66dee89e36f5e3"
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
