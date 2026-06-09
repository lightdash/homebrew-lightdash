class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3116.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3116.0/lightdash-cli-0.3116.0-macos-arm64.tar.gz"
      sha256 "36eb17f208ede582186a49a7271f84879f65ca45c934fc6805aa867433d61493"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3116.0/lightdash-cli-0.3116.0-macos-x64.tar.gz"
      sha256 "cd7ccf3364dd7c552456591a1413399b1b9ea07371b4dfd6b9a439d5a8a9f013"
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
