class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.202.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.2/lightdash-cli-1.202.2-macos-arm64.tar.gz"
      sha256 "f51e7aaf4c81834994e4fa376f4aea803118ebb8dfa66a87b66dac07f9804411"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.2/lightdash-cli-1.202.2-macos-x64.tar.gz"
      sha256 "aefc0340c4b532715cf7b895eacca6b6448819b63be4c032bed4b197eabf7eda"
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
