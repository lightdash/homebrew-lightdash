class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2982.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2982.0/lightdash-cli-0.2982.0-macos-arm64.tar.gz"
      sha256 "ebe2926e3ce03241fcdd7505bc3fa8693fcc86de2298c074c8e5e9f4615b7d58"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2982.0/lightdash-cli-0.2982.0-macos-x64.tar.gz"
      sha256 "ab0df22f1fda4740b13d38e73f23cb4244bee98f2939fe46f7a8d0562509bd12"
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
