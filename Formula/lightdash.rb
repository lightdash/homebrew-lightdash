class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.5/lightdash-cli-0.2270.5-macos-arm64.tar.gz"
      sha256 "24da990e7c46adccf798d7e16f515c23977b342f5ad7f9dbf440ad61df1a0427"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.5/lightdash-cli-0.2270.5-macos-x64.tar.gz"
      sha256 "e3437e4e3802d83269be9aca38b06c1ce18a3a48a0cdcefd23b1c9f56799c381"
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
