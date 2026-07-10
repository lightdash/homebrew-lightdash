class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3356.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3356.1/lightdash-cli-0.3356.1-macos-arm64.tar.gz"
      sha256 "cf77db6c73a9b9aaf427f624816ef0b722c29b750bae76ba4fe829ab88d809d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3356.1/lightdash-cli-0.3356.1-macos-x64.tar.gz"
      sha256 "450c7ee8e3b1cbbc21f3b15137ad4d160d28975f6d24ce3aa9f3eee424352b27"
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
