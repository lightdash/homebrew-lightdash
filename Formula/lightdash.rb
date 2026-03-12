class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2615.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2615.2/lightdash-cli-0.2615.2-macos-arm64.tar.gz"
      sha256 "47281e1d3442ca8cc7bfa38b687fd00aec4ba7c295e2cc008dc0333f3935ae39"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2615.2/lightdash-cli-0.2615.2-macos-x64.tar.gz"
      sha256 "1336bda40354ebe32784bda09599ed99fa2b44b5ce02b616ed169b1aefe3c6db"
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
