class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.64.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.64.1/lightdash-cli-1.64.1-macos-arm64.tar.gz"
      sha256 "662ea2c42d2b81876204cfa3f13a6b893b9c314a88ad53ba83775589eadf9b7b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.64.1/lightdash-cli-1.64.1-macos-x64.tar.gz"
      sha256 "08bf80aa14c174c5896258303bcb90ef6161b187e9486f2932df794ad9a7faf5"
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
