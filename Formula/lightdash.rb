class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.193.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.193.0/lightdash-cli-2.193.0-macos-arm64.tar.gz"
      sha256 "267697e7ced050ae34fd4dcb4363bd3bd1377e10a6fa9e30605288cef09f1103"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.193.0/lightdash-cli-2.193.0-macos-x64.tar.gz"
      sha256 "139341c76b8f2736b0d71daf7c9f232060a82d6b1306e717d15d1306f521a2ea"
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
