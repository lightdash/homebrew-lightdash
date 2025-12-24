class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2276.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2276.0/lightdash-cli-0.2276.0-macos-arm64.tar.gz"
      sha256 "f6cf06eeab57b7c170bea1a93b475565f0e0e523690738449ac2b8d18885594a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2276.0/lightdash-cli-0.2276.0-macos-x64.tar.gz"
      sha256 "028fd4d247be04af996cf63da12a9d9986fe41ab25f9f3c4c71362594fe58081"
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
