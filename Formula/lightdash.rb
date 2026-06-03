class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3087.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3087.0/lightdash-cli-0.3087.0-macos-arm64.tar.gz"
      sha256 "83078ca3e531f02f22fe523aa59281e9c227409e3f320d9858bfc93ba1b0ab7d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3087.0/lightdash-cli-0.3087.0-macos-x64.tar.gz"
      sha256 "ad95eb0d35cd156d8636c253a33d99558e1b40e8fee01ba5747ffc6afc07ecfa"
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
