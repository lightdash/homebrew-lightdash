class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.221.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.221.2/lightdash-cli-1.221.2-macos-arm64.tar.gz"
      sha256 "80dd47112550b7d0e35303301a8c1a20d402e6ddadc15cf67185c9faf6597b64"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.221.2/lightdash-cli-1.221.2-macos-x64.tar.gz"
      sha256 "e7cfd2a04795fdb253ddcf0618649a8067cb2eda0179005d4fbec9c5afcf9ae4"
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
