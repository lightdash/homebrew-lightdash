class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2440.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2440.1/lightdash-cli-0.2440.1-macos-arm64.tar.gz"
      sha256 "6fac5590a23a35e82d1b49573819e6f66568a72df374ffcfa903d4b46efe335e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2440.1/lightdash-cli-0.2440.1-macos-x64.tar.gz"
      sha256 "57098b96c893c8bca1b2d5d2d6dd51957cbe17ea45bd40372aa9201a6b06ecb2"
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
