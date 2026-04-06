class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2726.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2726.1/lightdash-cli-0.2726.1-macos-arm64.tar.gz"
      sha256 "de439eaea21425d4d726cd47b806791cf51aca71d2900a28d8f5aa37bd879ea1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2726.1/lightdash-cli-0.2726.1-macos-x64.tar.gz"
      sha256 "16e99c90453937938ec63c37df0ab13af9d2249d44d69a63c2143fc0587894bd"
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
