class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.47.0/lightdash-cli-1.47.0-macos-arm64.tar.gz"
      sha256 "a05249767a01ee0fa19aa1e41126923b255118d83e5ef100003c4bab9c0fb31e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.47.0/lightdash-cli-1.47.0-macos-x64.tar.gz"
      sha256 "7d1b4d2b27923a5ac040a0e1394fe61e4f276b0d66622b02d1eabb0c39d24caa"
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
