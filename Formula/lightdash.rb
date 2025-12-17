class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2260.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2260.1/lightdash-cli-0.2260.1-macos-arm64.tar.gz"
      sha256 "c77ffba34e14a651e7fd31697de4dd383ef10a03af7f455cab7fbd65e0717e73"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2260.1/lightdash-cli-0.2260.1-macos-x64.tar.gz"
      sha256 "285448b10f2ca5b45a1f8c064dd36ffaab23a5cdcfb30a6f608b5215e08f6fdc"
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
