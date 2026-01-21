class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2357.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.6/lightdash-cli-0.2357.6-macos-arm64.tar.gz"
      sha256 "e7410ae4605b72240cfb79a73e30dc7dd69d1f36a1f4356ece7c3b7af4495962"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.6/lightdash-cli-0.2357.6-macos-x64.tar.gz"
      sha256 "5d3b569d801f14d31d20d4beb76a50d65eb9bcb8850ebbc1bda2c7b7c64adcfd"
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
