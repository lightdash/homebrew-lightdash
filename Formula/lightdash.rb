class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3472.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3472.3/lightdash-cli-0.3472.3-macos-arm64.tar.gz"
      sha256 "61283001d4bd47100aa0908815711a1c77d7fa62d620e6a8e0797c295f38c3fe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3472.3/lightdash-cli-0.3472.3-macos-x64.tar.gz"
      sha256 "d29a184a2e0816297a6a66716cf242934b570ce5ae280145b743f62163676a5b"
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
