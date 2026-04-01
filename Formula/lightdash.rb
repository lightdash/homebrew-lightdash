class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2709.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.2/lightdash-cli-0.2709.2-macos-arm64.tar.gz"
      sha256 "bc5faaacdfa6156188669115b6675ff35d0b83b1a71af579913cd77625d9cabc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.2/lightdash-cli-0.2709.2-macos-x64.tar.gz"
      sha256 "2904364b1e05c34a4587ee8a62587b1d2ef9f7da7b7963915697486a4a5808c2"
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
