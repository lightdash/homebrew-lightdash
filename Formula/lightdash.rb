class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3197.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3197.0/lightdash-cli-0.3197.0-macos-arm64.tar.gz"
      sha256 "a6090ebafaf44ad7d84371b01dd45d81a039d30e4e10fc828269af1e3312f8d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3197.0/lightdash-cli-0.3197.0-macos-x64.tar.gz"
      sha256 "88af0a391ddd465bca415aa62fae896d46ba6bb932a5834d0e46f7e0a2e0d2b1"
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
