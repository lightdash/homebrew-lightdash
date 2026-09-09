class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.175.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.175.0/lightdash-cli-2.175.0-macos-arm64.tar.gz"
      sha256 "aff744e07529b8bce64bb3a30ec38788238713773af1c8fa77c558921dfc0217"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.175.0/lightdash-cli-2.175.0-macos-x64.tar.gz"
      sha256 "53257c514a33a1c1713ff5be69782aa4cef28198c43309d13703edc1e957bca8"
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
