class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.15/lightdash-cli-0.2270.15-macos-arm64.tar.gz"
      sha256 "4e456ae33b78c6a50576259f25667f1a6201f21216921e0a72ac177aaaa9dd8c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.15/lightdash-cli-0.2270.15-macos-x64.tar.gz"
      sha256 "cc4b08f11ef8931897a6bf0549eac03cadc478287fc67b4a4da1fb23c7d5da69"
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
