class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.89.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.89.1/lightdash-cli-1.89.1-macos-arm64.tar.gz"
      sha256 "bb2ac59e13d2ca9d02727765784ee7da0570fa8233ee95d497d8281af9a9f341"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.89.1/lightdash-cli-1.89.1-macos-x64.tar.gz"
      sha256 "e0c2f6c2d7e1f0858cfaaad9025142efc4c6467987fa3415c3237db6f5d2b5c9"
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
