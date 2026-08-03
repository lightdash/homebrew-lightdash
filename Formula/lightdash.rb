class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.67.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.67.0/lightdash-cli-1.67.0-macos-arm64.tar.gz"
      sha256 "035fcf06717cd3335755822ee5e7f5eea42cfa28d8ba0f2f1698db502ea55511"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.67.0/lightdash-cli-1.67.0-macos-x64.tar.gz"
      sha256 "6fcd63f00ce8accca5eb72d1ef926d15ada6d58f26b05adb21b8b6e492a55248"
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
