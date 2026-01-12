class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2328.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2328.0/lightdash-cli-0.2328.0-macos-arm64.tar.gz"
      sha256 "6b4dd3b71ec73ea614ccd6b36bea3746e02abffff2e16e56b22e08aa9ebc5ede"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2328.0/lightdash-cli-0.2328.0-macos-x64.tar.gz"
      sha256 "34cd96570f76de4eda152e9e0bed352683f3ffd7f87765a446610a990422cdf7"
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
