class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.164.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.164.1/lightdash-cli-1.164.1-macos-arm64.tar.gz"
      sha256 "f6280f426dfb3e140bd399e947952c1941a0cbd29ac75dcc5d7b4d12a347d3e5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.164.1/lightdash-cli-1.164.1-macos-x64.tar.gz"
      sha256 "635e82c2d497748944b47c460ab5d019ba09b538c7e5ef61bd25a3c06aed0203"
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
