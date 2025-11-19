class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2187.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2187.0/lightdash-cli-0.2187.0-macos-arm64.tar.gz"
      sha256 "e119c86ada5c1948b66f9ac37c5ac4b5c9e065b30c8358ea204ee1facc12c69e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2187.0/lightdash-cli-0.2187.0-macos-x64.tar.gz"
      sha256 "3c618600d717107c17354d66d35ed87ca776742f7e3a510df9c53fde57c53e23"
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
