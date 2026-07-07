class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3321.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3321.0/lightdash-cli-0.3321.0-macos-arm64.tar.gz"
      sha256 "a0f47f176661621dd6bf0ea57a6de8ca2c3bb4f14c8f592aedf88cd72526b1c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3321.0/lightdash-cli-0.3321.0-macos-x64.tar.gz"
      sha256 "226ec4eeda12cd8acfd0a1b86b54457b49049ac666dea27c3beeaf91ff550a6e"
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
