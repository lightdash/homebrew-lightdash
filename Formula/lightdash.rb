class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.80.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.80.0/lightdash-cli-1.80.0-macos-arm64.tar.gz"
      sha256 "28017a56e3a2a7a0d07054370814e9209028a9907769bbfc9ebf3630626eddd0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.80.0/lightdash-cli-1.80.0-macos-x64.tar.gz"
      sha256 "e46417e0a61bd01c9fdcf10189451f3f2fc8826c1a1c1336c5382953b5f3a4cb"
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
