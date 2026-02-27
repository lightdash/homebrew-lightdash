class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2543.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2543.0/lightdash-cli-0.2543.0-macos-arm64.tar.gz"
      sha256 "7ddd82e3e14b63404d6d95ddfb80d4959be18d839d5e72210215d631e38a4d8b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2543.0/lightdash-cli-0.2543.0-macos-x64.tar.gz"
      sha256 "4481df0fbf39922ba30336b099dbd2f9332f4a9b98c5ed8a7f31cfbf22a3ba06"
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
