class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2431.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2431.1/lightdash-cli-0.2431.1-macos-arm64.tar.gz"
      sha256 "3712ab9bdaa95b3a63ad510af8f45d01611b9e850e3b4a6859b505f6b8c0c10b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2431.1/lightdash-cli-0.2431.1-macos-x64.tar.gz"
      sha256 "9e0e35f6b47fd0161762ef19f016d0d7b736d2cbaf19906f1091b67d929073af"
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
