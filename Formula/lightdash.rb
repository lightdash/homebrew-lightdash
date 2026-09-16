class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.243.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.243.2/lightdash-cli-2.243.2-macos-arm64.tar.gz"
      sha256 "0b5afdf27650517b24afcca17e3db16777aae17f77039e5d1af54ddf1a432e46"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.243.2/lightdash-cli-2.243.2-macos-x64.tar.gz"
      sha256 "6e6ec3c14cfea06c34bd7c3d3d19c91949b191dbafb4abc87977ab5387148c86"
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
