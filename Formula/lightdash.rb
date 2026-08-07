class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.101.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.101.0/lightdash-cli-1.101.0-macos-arm64.tar.gz"
      sha256 "6b778b94c653122132beb57d885be5047fa6fcd031e41ce7e5cdbd96555528bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.101.0/lightdash-cli-1.101.0-macos-x64.tar.gz"
      sha256 "8aaf8d2e117a9c389dcebdcbb7638af893729b802b2abb872b857c562a53b891"
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
